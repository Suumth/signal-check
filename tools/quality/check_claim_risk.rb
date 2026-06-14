#!/usr/bin/env ruby
# frozen_string_literal: true

require 'psych'
require 'find'

root = File.expand_path(ARGV[0] || '.')
policy_path = File.join(root, 'quality-gates', 'claim-risk-patterns.yaml')
abort "Missing policy: #{policy_path}" unless File.exist?(policy_path)

policy = Psych.safe_load(File.read(policy_path, encoding: 'UTF-8'), aliases: true) || {}
scanner = policy.fetch('scanner', {})
patterns = Array(policy['patterns'])
skipped_fragments = Array(scanner['skipped_path_fragments'])
allowed_keywords = Array(scanner['allowed_context_keywords']).map(&:downcase)
window = scanner.fetch('context_window_lines', 2).to_i

text_extensions = %w[.md .txt .yaml .yml .json .rb .sh]
hard_findings = []
contextual_findings = []
files_scanned = 0

def likely_text_file?(path, text_extensions)
  text_extensions.include?(File.extname(path).downcase)
end

def skipped?(rel, fragments)
  fragments.any? { |fragment| rel.include?(fragment) }
end

Find.find(root) do |path|
  rel = path.sub(/^#{Regexp.escape(root)}\/?/, '')
  next if rel.empty? || rel.start_with?('.git/') || rel == '.git'
  next unless File.file?(path)
  next unless likely_text_file?(path, text_extensions)
  next if skipped?(rel, skipped_fragments)

  content = File.read(path, encoding: 'UTF-8')
  lines = content.lines
  files_scanned += 1

  patterns.each do |pattern|
    id = pattern['id'] || 'unknown'
    category = pattern['category'] || 'uncategorized'
    Array(pattern['terms']).each do |term|
      needle = term.downcase
      lines.each_with_index do |line, index|
        next unless line.downcase.include?(needle)

        from = [0, index - window].max
        to = [lines.length - 1, index + window].min
        context = lines[from..to].join.downcase
        allowed = allowed_keywords.any? { |keyword| context.include?(keyword) }
        finding = {
          path: rel,
          line: index + 1,
          term: term,
          pattern: id,
          category: category,
          text: line.strip
        }
        if allowed
          contextual_findings << finding
        else
          hard_findings << finding
        end
      end
    end
  end
end

if hard_findings.empty?
  puts "Claim-risk check OK (#{files_scanned} files scanned, #{contextual_findings.length} contextual findings reviewed by keyword)"
  exit 0
end

warn "Claim-risk check failed (#{hard_findings.length} hard findings):"
hard_findings.each do |f|
  warn "- #{f[:path]}:#{f[:line]} [#{f[:category]}/#{f[:pattern]}] #{f[:term]} => #{f[:text]}"
end
warn "Contextual findings allowed by policy keywords: #{contextual_findings.length}"
exit 1

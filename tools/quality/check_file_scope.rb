#!/usr/bin/env ruby
# frozen_string_literal: true

require 'psych'
require 'find'

root = File.expand_path(ARGV[0] || '.')
policy_path = File.join(root, 'quality-gates', 'file-scope-policy.yaml')
abort "Missing policy: #{policy_path}" unless File.exist?(policy_path)

policy = Psych.safe_load(File.read(policy_path, encoding: 'UTF-8'), aliases: true) || {}
max_kb = policy.fetch('max_file_size_kb', 200).to_i
blocked_extensions = Array(policy['blocked_extensions']).map(&:downcase)
blocked_fragments = Array(policy['blocked_path_fragments'])
blocked_top = Array(policy['blocked_top_level_paths'])
blocked_names = Array(policy['blocked_filenames'])

findings = []
file_count = 0

Find.find(root) do |path|
  rel = path.sub(/^#{Regexp.escape(root)}\/?/, '')
  next if rel.empty? || rel.start_with?('.git/') || rel == '.git'
  next unless File.file?(path)

  file_count += 1
  ext = File.extname(path).downcase
  size_kb = (File.size(path).to_f / 1024).round(1)
  top = rel.split('/').first
  name = File.basename(path)

  findings << [rel, "file exceeds #{max_kb} KB (#{size_kb} KB)"] if size_kb > max_kb
  findings << [rel, "blocked extension #{ext}"] if blocked_extensions.include?(ext)
  findings << [rel, "blocked top-level path #{top}"] if blocked_top.include?(top)
  findings << [rel, "blocked filename #{name}"] if blocked_names.include?(name)

  blocked_fragments.each do |fragment|
    findings << [rel, "blocked path fragment #{fragment}"] if rel.include?(fragment)
  end
end

if findings.empty?
  puts "File-scope check OK (#{file_count} files scanned)"
  exit 0
end

warn "File-scope check failed (#{findings.length} findings):"
findings.each do |rel, message|
  warn "- #{rel}: #{message}"
end
exit 1

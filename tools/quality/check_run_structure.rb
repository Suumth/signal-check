#!/usr/bin/env ruby
# frozen_string_literal: true

require 'psych'
require 'find'

root = File.expand_path(ARGV[0] || '.')
strict = ARGV.include?('--strict')
policy_path = File.join(root, 'quality-gates', 'run-structure-policy.yaml')
abort "Missing policy: #{policy_path}" unless File.exist?(policy_path)

policy = Psych.safe_load(File.read(policy_path, encoding: 'UTF-8'), aliases: true) || {}
scan_roots = Array(policy['scan_roots'])
markers = Array(policy['run_markers'])
required = Array(policy['required_when_marker_present'])
recommended = Array(policy['recommended_when_marker_present'])

warnings = []
checked = 0

scan_roots.each do |scan_root|
  base = File.join(root, scan_root)
  next unless Dir.exist?(base)

  Dir.glob(File.join(base, '**/')).sort.each do |dir|
    rel_dir = dir.sub(/^#{Regexp.escape(root)}\/?/, '').sub(%r{/$}, '')
    names = Dir.children(dir).select { |child| File.file?(File.join(dir, child)) }
    next unless (names & markers).any?

    checked += 1
    missing_required = required.reject { |name| names.include?(name) }
    missing_recommended = recommended.reject { |name| names.include?(name) }

    unless missing_required.empty?
      warnings << [rel_dir, "missing required files: #{missing_required.join(', ')}"]
    end
    unless missing_recommended.empty?
      warnings << [rel_dir, "missing recommended files: #{missing_recommended.join(', ')}"]
    end
  end
end

if warnings.empty?
  puts "Run-structure check OK (#{checked} run-like directories checked)"
  exit 0
end

message = strict ? 'failed' : 'warnings'
warn "Run-structure check #{message} (#{warnings.length} findings):"
warnings.each do |dir, msg|
  warn "- #{dir}: #{msg}"
end
exit(strict ? 1 : 0)

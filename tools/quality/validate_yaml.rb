#!/usr/bin/env ruby
# frozen_string_literal: true

require 'psych'
require 'find'

root = ARGV[0] || '.'
failures = []
count = 0

Find.find(root) do |path|
  next if path.include?('/.git/') || path.end_with?('/.git')
  next unless File.file?(path)
  next unless ['.yaml', '.yml'].include?(File.extname(path).downcase)

  count += 1
  begin
    Psych.safe_load(File.read(path, encoding: 'UTF-8'), aliases: true)
  rescue StandardError => e
    failures << [path, e.message]
  end
end

if failures.empty?
  puts "YAML parse OK (#{count} files)"
  exit 0
end

warn "YAML parse failed (#{failures.length} files):"
failures.each do |path, message|
  warn "- #{path}: #{message}"
end
exit 1

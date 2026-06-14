#!/usr/bin/env ruby
# frozen_string_literal: true

require 'json'
require 'find'

root = ARGV[0] || '.'
failures = []
count = 0

Find.find(root) do |path|
  next if path.include?('/.git/') || path.end_with?('/.git')
  next unless File.file?(path)
  next unless File.extname(path).downcase == '.json'

  count += 1
  begin
    JSON.parse(File.read(path, encoding: 'UTF-8'))
  rescue StandardError => e
    failures << [path, e.message]
  end
end

if failures.empty?
  puts "JSON parse OK (#{count} files)"
  exit 0
end

warn "JSON parse failed (#{failures.length} files):"
failures.each do |path, message|
  warn "- #{path}: #{message}"
end
exit 1

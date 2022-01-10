# frozen_string_literal: true

# require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "optparse"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[spec rubocop]

task :run, [:url] do |_t, args|
  options = {}
  opts = OptionParser.new
  opts.banner = "Usage: rake run [options]"
  opts.on("-u", "--url ARG", String) { |url| options[:url] = url }
  args = opts.order!(ARGV) {}
  opts.parse!(args)

  ruby "lib/url_counter.rb #{options[:url]}"
  exit
end

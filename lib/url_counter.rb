# frozen_string_literal: true

require "httparty"
require "nokogiri"
require "uri"

require_relative "url_counter/version"
require_relative "url_counter/http"
require_relative "url_counter/parser"
require_relative "url_counter/fetch"

module UrlCounter
  warn "You need to provide a URL" if ARGV.empty?

  url = ARGV[0]
  response = UrlCounter::Fetch.new(url: url).call

  puts response
end

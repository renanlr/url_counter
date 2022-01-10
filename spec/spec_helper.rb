# frozen_string_literal: true

require "httparty"
require "nokogiri"
require "uri"
require "byebug"

require "url_counter/version"
require "url_counter/http"
require "url_counter/parser"
require "url_counter/fetch"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

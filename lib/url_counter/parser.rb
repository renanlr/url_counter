# frozen_string_literal: true

module UrlCounter
  # Service to parse html
  class Parser
    def initialize(html)
      @html = html
    end

    def call
      doc = Nokogiri::HTML(@html)
      doc.xpath("//a", "//img")
    end
  end
end

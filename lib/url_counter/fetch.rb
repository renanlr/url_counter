# frozen_string_literal: true

module UrlCounter
  class Fetch
    def initialize(url:)
      @url = url
    end

    def call
      response = UrlCounter::Http.new.get(url: @url)
      tags = UrlCounter::Parser.new(response.body).call
      format_response(tags)
    end

    private def format_response(tags)
      assets = tags.select { |el| el.name == "img" }
                   .map { |el| get_url_from_img_tag(el) }
                   .select { |el| valid_url?(el) }
      links = tags.select { |el| el.name == "a" }
                  .map { |el| get_url_from_a_tag(el) }
                  .select { |el| valid_url?(el) }

      {
        assets: assets,
        links: links
      }
    end

    private def get_url_from_a_tag(element)
      element.attributes["href"]&.value
    end

    private def get_url_from_img_tag(element)
      element.attributes["src"]&.value
    end

    private def valid_url?(url)
      url =~ /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/
    end
  end
end

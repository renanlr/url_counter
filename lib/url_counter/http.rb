# frozen_string_literal: true

module UrlCounter
  # Service to make http requests
  class Http
    def get(url:)
      ::HTTParty.get(url)
    end
  end
end

# frozen_string_literal: true

module UrlCounter
  class Http
    def get(url:)
      ::HTTParty.get(url)
    end
  end
end

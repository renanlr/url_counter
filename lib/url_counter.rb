# frozen_string_literal: true

require 'httparty'
require 'nokogiri'
require 'uri'

require "url_counter/version"
require "url_counter/http"
require "url_counter/parser"
require "url_counter/fetch"

module UrlCounter
  class Error < StandardError; end

  def fetch(url)

  end

  private def get_url_from_element(element)
    return { link: element.attributes['href']&.value, tag: 'a' } if element.name == 'a'
    { link: element.attributes['src']&.value, tag: 'img' } if element.name == 'img'
  end
end

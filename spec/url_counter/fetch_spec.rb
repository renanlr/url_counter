# frozen_string_literal: true

RSpec.describe 'UrlCounter::Fetch' do
  let(:url) { "https://google.com" }
  let(:google_body) { File.read("spec/fixtures/google_page.html") }
  let(:google_response) { instance_double(HTTParty::Response, body: google_body) }
  let(:google_body_assets_size) { 0 }
  let(:google_body_links_size) { 26 }

  before do
    allow(HTTParty).to receive(:get).and_return(google_response)
  end

  subject { UrlCounter::Fetch.new(url: url).call }

  context '#call' do
    it 'returns the correct number of assets' do
      expect(subject.assets.size).to eq(google_body_assets_size)
    end

    it 'returns the correct number of assets' do
      expect(subject.links.size).to eq(google_body_links_size)
    end
  end
end

# frozen_string_literal: true

RSpec.describe "UrlCounter::Http" do
  let(:url) { "https://google.com" }
  let(:google_body) { File.read("spec/fixtures/google_page.html") }
  let(:google_response) { instance_double(HTTParty::Response, body: google_body) }

  subject { UrlCounter::Http.new.get(url: url) }

  before do
    allow(HTTParty).to receive(:get).and_return(google_response)
  end

  context "#get" do
    it "calls HTTParty with correct params" do
      subject
      expect(HTTParty).to have_received(:get).with(url)
    end
  end
end

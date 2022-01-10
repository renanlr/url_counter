# frozen_string_literal: true

RSpec.describe "UrlCounter::Parser" do
  let(:html) { "<h1><a href='https://teste.com'>Teste</a></h1><img src='https://teste.com'>" }

  subject { UrlCounter::Parser.new(html).call }

  context "#call" do
    it "find tags img and a" do
      expect(subject.size).to(eq(2))
    end
  end
end

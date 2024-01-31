# frozen_string_literal: true

RSpec.describe MediumApi do
  it "has a version number" do
    expect(MediumApi::VERSION).not_to be nil
  end

  describe "#configuration" do
    subject(:medium_api) { described_class }
    let(:api_key) { "api_key" }

    specify do
      medium_api.configure do |config|
        config.api_key = api_key
      end
      expect(medium_api.configuration.api_key).to eq(api_key)
    end
  end
end

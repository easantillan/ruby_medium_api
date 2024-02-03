# frozen_string_literal: true

RSpec.describe MediumApi::ResourceApi do

  subject(:medium_api) { MediumApi }
  # do not care about the api_key
  let(:api_key) { "2ada46c383ae76af4ca4dcbe42f7611062644f366bd6281c2efe78202b35f3c60" }

  describe "#client" do
    before do
        medium_api.configure do |config|
            config.api_key = api_key
        end
    end

    xit "tests the accessibility to the client" do
        client = MediumApi::ResourceApi.client
        expect(client.api_key).to eq(api_key)
    end
  end

end

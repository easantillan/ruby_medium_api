# frozen_string_literal: true
require 'spec_helper'

RSpec.describe MediumApi::Publication do

    subject(:medium_api) { MediumApi }
    #do not care about the api_key
    let(:api_key) { "2ada46c383ae76af4ca4dcbe42f7611062644f366bd6281c2efe78202b35f3c60" }

    let (:publication) { described_class.new(id: 'eca1ba5ae1ca') }

   before do
    medium_api.configure do |config|
        config.api_key = api_key
    end
   end

    describe "#contributors" do
       specify do
        contributors = VCR.use_cassette 'contributors', :record => :new_episodes do
            publication.contributors
        end

        expect(contributors).to_not be_nil
       end

    end
end

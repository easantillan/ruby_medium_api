# frozen_string_literal: true

RSpec.describe MediumApi::Utils do

    describe ".underscore" do
        specify do
            expect(described_class.underscore("mediumApi")).to eq("medium_api")
        end
    end

    describe ".underscore_keys" do
        let(:bad_formatted_hash){  { "badKey" => "value", :bigerKeyValue => "vall" } }
        let(:well_formatted_hash){  { "bad_key" => "value", :biger_key_value => "vall" } }


        specify do
            expect(described_class.underscore_keys(bad_formatted_hash)).to eq(well_formatted_hash)
        end
    end

    describe ".camelize_keys" do
        let(:camelized_hash){  { "badKey" => "value", :bigerKeyValue => "vall" } }
        let(:non_camelized_hash){  { "bad_key" => "value", :biger_key_value => "vall" } }


        specify do
            expect(described_class.camelize_keys(non_camelized_hash)).to eq(camelized_hash)
        end
    end

    describe ".camelize" do
        specify do
            expect(described_class.camelize("medium_api")).to eq("mediumApi")
        end
    end

end

require 'rails_helper'
require_relative '../../app/services/college_api_service'

RSpec.describe CollegeApiService, type: :service do
  let(:api_key) { 'test_api_key' }
  let(:service) { CollegeApiService.new(api_key) }

  describe "#fetch_colleges" do
    it "returns an array of colleges" do
      VCR.use_cassette("college_api") do
        colleges = service.fetch_colleges
        expect(colleges).to be_an(Array)
        expect(colleges.first).to have_key("school.name")
      end
    end
  end

  describe "#save_colleges" do
    it "saves colleges to the database" do
      VCR.use_cassette("college_api") do
        expect { service.save_colleges }.to change(College, :count).by_at_least(1)
      end
    end
  end
end


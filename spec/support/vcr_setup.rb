require 'vcr'
require 'webmock/rspec'

VCR.configure do |config|
  config.cassette_library_dir = "spec/vcr_cassettes"
  config.hook_into :webmock
  config.configure_rspec_metadata!
  config.filter_sensitive_data('<API_KEY>') { ENV['COLLEGE_API_KEY'] }
end

RSpec.configure do |config|
  config.before(:each) do
    stub_request(:any, /api.openai.com/).to_rack(FakeOpenAI)
  end
end

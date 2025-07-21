require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = 'spec/cassettes'
  config.hook_into :webmock
  config.configure_rspec_metadata!
  config.allow_http_connections_when_no_cassette = false
  
  # Filter sensitive data
  config.filter_sensitive_data('<OPEN_WEATHER_API_KEY>') { ENV['OPEN_WEATHER_API_KEY'] }
  
  # Allow connections to localhost for test server
  config.ignore_localhost = true
end

require 'rails_helper'

RSpec.describe 'Weather API Endpoints' do
  describe 'POST /forecast' do
    it 'returns the 5-day forecast' do
      location_params = { location: "80123" }
      post "/api/v1/forecast", params: location_params
      result = JSON.parse(response.body, symbolize_names: true)
      require 'pry'; binding.pry
    end
  end
end

require 'rails_helper'

RSpec.describe 'Weather API Endpoints' do
  describe 'POST /forecast' do
    it 'returns the 5-day forecast' do
      location_params = { location: "80123" }
      post "/api/v1/forecast", params: location_params
      result = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful

      expect(result).to have_key(:data)

      expect(result[:data]).to be_an Array

      result[:data].each do |forecast|
        expect(forecast).to have_key(:type)
        expect(forecast[:type]).to eq("forecast")
        expect(forecast[:type]).to be_a String

        expect(forecast).to have_key(:attributes)
        expect(forecast[:attributes]).to be_a Hash

        expect(forecast[:attributes]).to have_key(:date)
        expect(forecast[:attributes][:date]).to be_a Integer

        expect(forecast[:attributes]).to have_key(:sunrise)
        expect(forecast[:attributes][:sunrise]).to be_a Integer

        expect(forecast[:attributes]).to have_key(:sunset)
        expect(forecast[:attributes][:sunset]).to be_a Integer

        expect(forecast[:attributes]).to have_key(:high)
        expect(forecast[:attributes][:high]).to be_a Float

        expect(forecast[:attributes]).to have_key(:low)
        expect(forecast[:attributes][:low]).to be_a Float

        expect(forecast[:attributes]).to have_key(:humidity)
        expect(forecast[:attributes][:humidity]).to be_a Integer

        expect(forecast[:attributes]).to have_key(:wind)
        expect(forecast[:attributes][:wind]).to be_a Float

        expect(forecast[:attributes]).to have_key(:weather)
        expect(forecast[:attributes][:weather]).to be_a String
      end
    end
  end
end

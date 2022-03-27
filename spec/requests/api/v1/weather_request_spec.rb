require 'rails_helper'

RSpec.describe 'Weather API Endpoints' do
  describe 'POST /forecast' do
    it 'returns the 5-day forecast' do
      location_params = { location: "80123" }
      post "/api/v1/forecast", params: location_params
      result = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful

      expect(result).to have_key(:data)

      expect(result[:data]).to have_key(:id)

      expect(result[:data]).to have_key(:forecast)

      expect(result[:data][:forecast]).to be_an Array

      result[:data][:forecast].each do |forecast|
        expect(forecast).to have_key(:date)
        expect(forecast[:date]).to be_a String

        expect(forecast).to have_key(:high)
        expect(forecast[:high]).to be_a Float

        expect(forecast).to have_key(:low)
        expect(forecast[:low]).to be_a Float

        expect(forecast).to have_key(:day_conditions)
        expect(forecast[:day_conditions]).to be_a String

        expect(forecast).to have_key(:night_conditions)
        expect(forecast[:night_conditions]).to be_a String
      end
    end
  end
end

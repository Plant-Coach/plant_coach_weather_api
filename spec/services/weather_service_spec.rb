require 'rails_helper'

RSpec.describe WeatherService do
  describe '::location_search' do
    it 'returns the location data based on a string search', :vcr do
      data = WeatherService.location_search('80121')

      expect(data).to have_key(:lat)
      expect(data[:lat]).to be_a Float

      expect(data).to have_key(:lon)
      expect(data[:lon]).to be_a Float

      expect(data).to have_key(:zip)
      expect(data[:zip]).to be_a String

      expect(data).to have_key(:name)
      expect(data[:name]).to be_a String
    end
  end

  describe '::get_forecast' do
    it 'returns the forecast', :vcr do
      lat = 39.6118
      lon = -104.9506
      data = WeatherService.get_forecast(lat, lon)

      expect(data).to be_a Hash

      expect(data).to have_key(:lat)
      expect(data[:lat]).to be_a Float

      expect(data).to have_key(:lon)
      expect(data[:lon]).to be_a Float

      expect(data).to have_key(:current)
      expect(data[:current]).to be_a Hash

      expect(data).to have_key(:daily)
      expect(data[:daily]).to be_an Array

      data[:daily].each do |forecast|
        expect(forecast).to have_key(:dt)
        expect(forecast).to have_key(:sunrise)
        expect(forecast).to have_key(:sunset)
        expect(forecast).to have_key(:moonrise)
        expect(forecast).to have_key(:moonset)

        expect(forecast[:weather][0]).to have_key(:main)
      end
    end
  end
end

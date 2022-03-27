require 'rails_helper'

RSpec.describe WeatherService do
  describe '::location_search' do
    it 'returns the location data based on a string search' do
      data = WeatherService.location_search("80121")

      expect(data[0]).to have_key(:GeoPosition)
      expect(data[0][:GeoPosition]).to be_a Hash

      expect(data[0][:GeoPosition]).to have_key(:Latitude)
      expect(data[0][:GeoPosition][:Latitude]).to be_a Float

      expect(data[0][:GeoPosition]).to have_key(:Longitude)
      expect(data[0][:GeoPosition][:Longitude]).to be_a Float

      expect(data[0]).to have_key(:EnglishName)
      expect(data[0][:EnglishName]).to be_a String
    end
  end

  describe '::get_forecast' do
    it 'returns the forecast' do
      data = WeatherService.get_forecast("35054_PC")
      
      expect(data).to be_a Hash

      expect(data).to have_key(:Headline)
      expect(data).to be_a Hash

      expect(data[:Headline]).to have_key(:Text)
      expect(data[:Headline][:Text]).to be_a String

      expect(data).to have_key(:DailyForecasts)
      expect(data[:DailyForecasts]).to be_an Array

      data[:DailyForecasts].each do |forecast|
        expect(forecast).to have_key(:Date)
        expect(forecast).to have_key(:Temperature)
        expect(forecast).to have_key(:Day)
        expect(forecast).to have_key(:Night)

        expect(forecast[:Temperature]).to have_key(:Minimum)
        expect(forecast[:Temperature][:Minimum]).to have_key(:Value)
        expect(forecast[:Temperature][:Minimum][:Value]).to be_a Float

        expect(forecast[:Temperature]).to have_key(:Maximum)
        expect(forecast[:Temperature][:Maximum]).to have_key(:Value)
        expect(forecast[:Temperature][:Maximum][:Value]).to be_a Float
      end
    end
  end
end

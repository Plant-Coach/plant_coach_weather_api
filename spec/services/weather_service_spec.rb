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
end

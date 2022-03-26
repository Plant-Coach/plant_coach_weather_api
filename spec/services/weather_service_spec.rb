require 'rails_helper'

RSpec.describe WeatherService do
  describe '::location_search' do
    it 'returns the location data based on a string search' do
      data = WeatherService.location_search("Denver")
      require 'pry'; binding.pry
    end
  end
end

require 'rails_helper'

RSpec.describe FrostDateService do
  describe '::find_weather_station' do
    it 'retrieves the closest weather station to the coordinates' do
      data = FrostDateService.find_weather_station(39.7392, -104.9903)
      expect(data).to be_an Array

      expect(data[0]).to have_key(:id)
      expect(data[0][:id]).to be_a String

      expect(data[0]).to have_key(:name)
      expect(data[0][:name]).to be_a String

      expect(data[0]).to have_key(:lat)
      expect(data[0][:lat]).to be_a String

      expect(data[0]).to have_key(:lon)
      expect(data[0][:lon]).to be_a String
    end
  end

  describe '::get_spring_frost_dates' do
    it 'returns all the frost date probabilities for a given location' do
      data = FrostDateService.get_spring_frost_dates("54762")

      expect(data).to be_an Array

      expect(data[1]).to have_key(:season_id)
      expect(data[1][:season_id]).to eq("1")

      expect(data[1]).to have_key(:temperature_thresholed)
      expect(data[1][:temperature_thresholed]).to eq("32")

      expect(data[1]).to have_key(:prob_50)
      expect(data[1][:prob_50]).to be_a String
    end
  end
end

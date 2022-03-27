require 'rails_helper'

RSpec.describe WeatherFacade do
  describe '::get_forecast' do
    it 'returns the forecast data for 5 days' do
      search = "80123"
      data = WeatherFacade.get_forecast(search)

      expect(data).to be_an Array

      data.each do |forecast|
        expect(forecast).to be_a Forecast
      end
    end
  end
end

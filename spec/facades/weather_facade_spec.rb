require 'rails_helper'

RSpec.describe WeatherFacade do
  describe '::get_forecast' do
    it 'returna forecast payload with current, hourly and daily weather and alerts' do
      search = "80123"
      forecast_data = WeatherFacade.get_forecast(search)

      expect(forecast_data).to be_a Forecast

      expect(forecast_data.alerts).to be_an Array

      expect(forecast_data.current_weather).to be_a CurrentWeather

      expect(forecast_data.daily_weather).to be_an Array
      forecast_data.daily_weather.each do |weather|
        expect(weather).to be_a DailyWeather
      end

      expect(forecast_data.hourly_weather).to be_an Array
      forecast_data.hourly_weather.each do |weather|
        expect(weather).to be_an HourlyWeather
      end
    end
  end
end

class WeatherFacade
  def self.get_forecast(location_search)
    location_results = WeatherService.location_search(location_search)
    location_key = location_results[0][:Key]
    forecast_results = WeatherService.get_forecast(location_key)
    forecast_results[:DailyForecasts].map { |daily_forecast| Forecast.new(daily_forecast) }
  end
end

class WeatherFacade
  def self.get_forecast(location_search)
    location_results = WeatherService.location_search(location_search)
    latitude = location_results[:lat]
    longitude = location_results[:lon]
    forecast_results = WeatherService.get_forecast(latitude, longitude)
    Forecast.new(forecast_results)
  end
end

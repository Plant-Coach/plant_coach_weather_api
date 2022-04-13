class FrostDateFacade
  def self.get_frost_dates(zip_code)
    location_coords = WeatherService.location_search(zip_code)
    weather_station_data = FrostDateService.find_weather_station(location_coords[:lat], location_coords[:lon])
    spring_dates = FrostDateService.get_spring_frost_dates(weather_station_data[0][:id])
    fall_dates = FrostDateService.get_fall_frost_dates(weather_station_data[0][:id])
    FrostDates.new(location_coords, spring_dates[1][:prob_40], fall_dates[1][:prob_40])
  end
end

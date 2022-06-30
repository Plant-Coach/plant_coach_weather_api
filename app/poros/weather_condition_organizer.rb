module WeatherConditionOrganizer
  def weather_conditions(weather)
    weather.map do |weather_details|
      {
        code: weather_details[:id],
        category: weather_details[:main],
        description: weather_details[:description],
        icon: weather_details[:icon]
      }
    end
  end
end

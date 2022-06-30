class CurrentWeather
  attr_reader :id, :date, :temp, :humidity, :clouds, :wind, :weather, :rain, :snow
  include WeatherConditionOrganizer

  def initialize(data)
    @id = nil
    @date = Time.at(data[:dt]).to_datetime
    @temp = data[:temp]
    @humidity = data[:humidity]
    @clouds = data[:clouds]
    @wind = data[:wind_speed]
    @weather = weather_conditions(data[:weather])
    @rain = data[:rain]
    @snow = data[:snow]
  end
end

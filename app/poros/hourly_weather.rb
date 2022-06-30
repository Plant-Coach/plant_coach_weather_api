class HourlyWeather
  attr_reader :id,
              :date,
              :humidity,
              :wind,
              :weather,
              :probability_of_precipitation,
              :rain,
              :snow

  include WeatherConditionOrganizer

  def initialize(data)
    @id = nil
    @date = Time.at(data[:dt]).to_datetime
    @humidity = data[:humidity]
    @wind = data[:wind_speed]
    @weather = weather_conditions(data[:weather])
    @probability_of_precipitation = data[:pop]
    @rain = data[:rain]
    @snow = data[:snow]
  end
end

class DailyWeather
  attr_reader :id,
              :date,
              :sunrise,
              :sunset,
              :moon_phase,
              :high,
              :low,
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
    @sunrise = data[:sunrise]
    @sunset = data[:sunset]
    @moon_phase = data[:moon_phase]
    @high = data[:temp][:max]
    @low = data[:temp][:min]
    @humidity = data[:humidity]
    @wind = data[:wind_speed]
    @weather = weather_conditions(data[:weather])
    @probability_of_precipitation = data[:pop]
    @rain = data[:rain]
    @snow = data[:snow]
  end
end

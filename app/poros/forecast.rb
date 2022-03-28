class Forecast
  attr_reader :id, :date, :sunrise, :sunset, :high, :low, :humidity, :wind, :weather

  def initialize(data)
    @id = nil
    @date = data[:dt]
    @sunrise = data[:sunrise]
    @sunset = data[:sunset]
    @high = data[:temp][:max]
    @low = data[:temp][:min]
    @humidity = data[:humidity]
    @wind = data[:wind_speed]
    @weather = data[:weather][0][:main]
  end
end

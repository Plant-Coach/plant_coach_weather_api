class Forecast
  attr_reader :id, :lat, :lon, :current_weather, :daily_weather, :hourly_weather, :alerts

  def initialize(data)
    @id = nil
    @lat = data[:lat]
    @lon = data[:lon]
    @current_weather = CurrentWeather.new(data[:current])
    @daily_weather = process_daily_weather(data[:daily])
    @hourly_weather = process_hourly_weather(data[:hourly])
    @alerts = process_alerts(data[:alerts])
  end

  def process_daily_weather(weekly_forecast)
    weekly_forecast.map { |daily_weather| DailyWeather.new(daily_weather) }
  end

  def process_hourly_weather(fortyeight_hour_weather)
    fortyeight_hour_weather.map { |hourly_weather| HourlyWeather.new(hourly_weather) }
  end

  def process_alerts(alerts)
    alerts_list = []
    if !alerts.nil?
      alerts_list = alerts.map { |alert| Alert.new(alert) }
    end
    alerts_list
  end
end

class ForecastSerializer
  # include JSONAPI::Serializer

  def self.test(forecast)
    {
    "data": {
      "id": nil,
      "forecast": forecast.each do |daily_forecast|
        {
        "date": daily_forecast.date,
        "day_conditions": daily_forecast.day_conditions,
        "night_conditions": daily_forecast.night_conditions,
        "high": daily_forecast.high,
        "low": daily_forecast.low
        }
      end
      }
    }
  end
end

class WeatherService
  def self.location_search(location)
    response = Faraday.get("http://api.openweathermap.org/geo/1.0/zip?zip=#{location}&appid=#{ENV['OPEN_WEATHER_API_KEY']}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_forecast(lat, lon)
    conn = Faraday.new("https://api.openweathermap.org") do |faraday|
      faraday.params["appid"] = ENV['OPEN_WEATHER_API_KEY']
      faraday.params["lat"] = lat
      faraday.params["lon"] = lon
      faraday.params[:exclude] = "minutely,hourly"
      faraday.params[:units] = "imperial"
    end
    response = conn.get("/data/3.0/onecall")
    JSON.parse(response.body, symbolize_names: true)
  end
end

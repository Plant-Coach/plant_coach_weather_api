class WeatherService
  def self.location_search(location)
    conn = Faraday.new("http://dataservice.accuweather.com") do |faraday|
      faraday.params["q"] = location
      faraday.params["details"] = true
      faraday.params["apikey"] = ENV['weather_api_key']
    end
    response = conn.get("/locations/v1/cities/search/")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_forecast(location_key)
    conn = Faraday.new("http://dataservice.accuweather.com") do |faraday|
      faraday.params["apikey"] = ENV['weather_api_key']
    end
    response = conn.get("/forecasts/v1/daily/5day/#{location_key}")
    JSON.parse(response.body, symbolize_names: true)
  end
end

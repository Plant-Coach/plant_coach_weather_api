class WeatherService
  def self.location_search(location)
    conn = Faraday.new("http://dataservice.accuweather.com") do |faraday|
      faraday.params["q"] = location
      faraday.params["apikey"] = ENV['weather_api_key']
    end
    response = conn.get("/locations/v1/cities/search/")
    JSON.parse(response.body, symbolize_names: true)
  end
end

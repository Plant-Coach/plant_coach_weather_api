class FrostDateService
  def self.find_weather_station(lat, long)
    conn = Faraday.new("https://api.farmsense.net")
    response = conn.get("/v1/frostdates/stations/?lat=#{lat}&lon=#{long}")
    JSON.parse(response.body, symbolize_names: true)
  end
end

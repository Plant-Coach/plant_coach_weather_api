class FrostDateService
  def self.find_weather_station(lat, long)
    conn = Faraday.new('https://api.farmsense.net')
    response = conn.get("/v1/frostdates/stations/?lat=#{lat}&lon=#{long}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_spring_frost_dates(weather_station_id)
    conn = Faraday.new('https://api.farmsense.net')
    response = conn.get("/v1/frostdates/probabilities/?station=#{weather_station_id}&season=1")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_fall_frost_dates(weather_station_id)
    conn = Faraday.new('https://api.farmsense.net')
    response = conn.get("/v1/frostdates/probabilities/?station=#{weather_station_id}&season=2")
    JSON.parse(response.body, symbolize_names: true)
  end
end

class FrostDateService
  def self.find_weather_station(lat, long)
    begin
      conn = Faraday.new('https://api.farmsense.net')
      response = conn.get("/v1/frostdates/stations/?lat=#{lat}&lon=#{long}")
      if response.status == 200
        JSON.parse(response.body, symbolize_names: true)
      else
        Rails.logger.error("API request failed with status code: #{response.status}")
        nil # Or return a structured error object
      end
      JSON.parse(response.body, symbolize_names: true)
    rescue Faraday::TimeoutError, Faraday::ConnectionFailed => e
      Rails.logger.error("Network error: #{e.message}")
      nil
    rescue JSON::ParserError => e
      Rails.logger.error("Failed to parse JSON response: #{e.message}")
      nil
    end
  end

  def self.get_spring_frost_dates(weather_station_id)
    begin
      conn = Faraday.new('https://api.farmsense.net')
      response = conn.get("/v1/frostdates/probabilities/?station=#{weather_station_id}&season=1")
      if response.status == 200
        JSON.parse(response.body, symbolize_names: true)
      else
        Rails.logger.error("API request failed with status code: #{response.status}")
        nil # Or return a structured error object
      end
      JSON.parse(response.body, symbolize_names: true)
    rescue Faraday::TimeoutError, Faraday::ConnectionFailed => e
      Rails.logger.error("Network error: #{e.message}")
      nil
    rescue JSON::ParserError => e
      Rails.logger.error("Failed to parse JSON response: #{e.message}")
      nil
    end
  end

  def self.get_fall_frost_dates(weather_station_id)
    begin
      conn = Faraday.new('https://api.farmsense.net')
      response = conn.get("/v1/frostdates/probabilities/?station=#{weather_station_id}&season=2")
      if response.status == 200
        JSON.parse(response.body, symbolize_names: true)
      else
        Rails.logger.error("API request failed with status code: #{response.status}")
        nil # Or return a structured error object
      end
      JSON.parse(response.body, symbolize_names: true)
    rescue Faraday::TimeoutError, Faraday::ConnectionFailed => e
      Rails.logger.error("Network error: #{e.message}")
      nil
    rescue JSON::ParserError => e
      Rails.logger.error("Failed to parse JSON response: #{e.message}")
      nil
    end
  end
end
class FrostDateService
  def self.find_weather_station(lat, long)
    Rails.logger.info "Making weather station search API call for lat: #{lat}, lon: #{long}"

    begin
      conn = Faraday.new('https://api.farmsense.net') do |f|
        f.options.timeout = 30
        f.options.open_timeout = 10
        f.ssl.verify = false
        f.ssl.ca_file = nil
      end
      response = conn.get("/v1/frostdates/stations/?lat=#{lat}&lon=#{long}")

      Rails.logger.info "Weather station API response: status=#{response.status}, body_size=#{response.body.length}"

      if response.status == 200
        JSON.parse(response.body, symbolize_names: true)
      else
        Rails.logger.error("Weather station API request failed with status code: #{response.status}, body: #{response.body}")
        nil
      end
    rescue Faraday::TimeoutError, Faraday::ConnectionFailed => e
      Rails.logger.error("Weather station API network error: #{e.message}")
      nil
    rescue Faraday::SSLError => e
      Rails.logger.error("Weather station API SSL error: #{e.message}")
      nil
    rescue JSON::ParserError => e
      Rails.logger.error("Weather station API JSON parse error: #{e.message}")
      nil
    end
  end

  def self.get_spring_frost_dates(weather_station_id)
    Rails.logger.info "Making spring frost dates API call for station: #{weather_station_id}"

    begin
      conn = Faraday.new('https://api.farmsense.net') do |f|
        f.options.timeout = 30
        f.options.open_timeout = 10
        f.ssl.verify = false
        f.ssl.ca_file = nil
      end
      response = conn.get("/v1/frostdates/probabilities/?station=#{weather_station_id}&season=1")

      Rails.logger.info "Spring frost dates API response: status=#{response.status}, body_size=#{response.body.length}"

      if response.status == 200
        JSON.parse(response.body, symbolize_names: true)
      else
        Rails.logger.error("Spring frost dates API request failed with status code: #{response.status}, body: #{response.body}")
        nil
      end
    rescue Faraday::TimeoutError, Faraday::ConnectionFailed => e
      Rails.logger.error("Spring frost dates API network error: #{e.message}")
      nil
    rescue Faraday::SSLError => e
      Rails.logger.error("Spring frost dates API SSL error: #{e.message}")
      nil
    rescue JSON::ParserError => e
      Rails.logger.error("Spring frost dates API JSON parse error: #{e.message}")
      nil
    end
  end

  def self.get_fall_frost_dates(weather_station_id)
    Rails.logger.info "Making fall frost dates API call for station: #{weather_station_id}"

    begin
      conn = Faraday.new('https://api.farmsense.net') do |f|
        f.options.timeout = 30
        f.options.open_timeout = 10
        f.ssl.verify = false
        f.ssl.ca_file = nil
      end
      response = conn.get("/v1/frostdates/probabilities/?station=#{weather_station_id}&season=2")

      Rails.logger.info "Fall frost dates API response: status=#{response.status}, body_size=#{response.body.length}"

      if response.status == 200
        JSON.parse(response.body, symbolize_names: true)
      else
        Rails.logger.error("Fall frost dates API request failed with status code: #{response.status}, body: #{response.body}")
        nil
      end
    rescue Faraday::TimeoutError, Faraday::ConnectionFailed => e
      Rails.logger.error("Fall frost dates API network error: #{e.message}")
      nil
    rescue Faraday::SSLError => e
      Rails.logger.error("Fall frost dates API SSL error: #{e.message}")
      nil
    rescue JSON::ParserError => e
      Rails.logger.error("Fall frost dates API JSON parse error: #{e.message}")
      nil
    end
  end
end

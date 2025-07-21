class WeatherService
  def self.location_search(location)
    url = "http://api.openweathermap.org/geo/1.0/zip?zip=#{location}&appid=#{ENV['OPEN_WEATHER_API_KEY']}"
    Rails.logger.info "Making location search API call for zip: #{location}"

    response = Faraday.get(url) do |conn|
      conn.options.timeout = 30
      conn.options.open_timeout = 10
    end
    Rails.logger.info "Location search API response: status=#{response.status}, body_size=#{response.body.length}"

    if response.status != 200
      Rails.logger.error "Location search API failed: status=#{response.status}, body=#{response.body}"
    end

    JSON.parse(response.body, symbolize_names: true)
  rescue Faraday::TimeoutError, Faraday::ConnectionFailed => e
    Rails.logger.error "Location search API network error: #{e.message}"
    raise
  rescue Faraday::SSLError => e
    Rails.logger.error "Location search API SSL error: #{e.message}"
    raise
  rescue JSON::ParserError => e
    Rails.logger.error "Location search API JSON parse error: #{e.message}"
    raise
  end

  def self.get_forecast(lat, lon)
    Rails.logger.info "Making forecast API call for lat: #{lat}, lon: #{lon}"

    conn = Faraday.new('https://api.openweathermap.org') do |faraday|
      faraday.params['appid'] = ENV['OPEN_WEATHER_API_KEY']
      faraday.params['lat'] = lat
      faraday.params['lon'] = lon
      faraday.params[:exclude] = 'minutely,hourly'
      faraday.params[:units] = 'imperial'
      faraday.options.timeout = 30
      faraday.options.open_timeout = 10
      faraday.ssl.verify = Rails.env.production?
      faraday.ssl.ca_file = nil
    end

    response = conn.get('/data/3.0/onecall')
    Rails.logger.info "Forecast API response: status=#{response.status}, body_size=#{response.body.length}"

    Rails.logger.error "Forecast API failed: status=#{response.status}, body=#{response.body}" if response.status != 200

    JSON.parse(response.body, symbolize_names: true)
  rescue Faraday::TimeoutError, Faraday::ConnectionFailed => e
    Rails.logger.error "Forecast API network error: #{e.message}"
    raise
  rescue Faraday::SSLError => e
    Rails.logger.error "Forecast API SSL error: #{e.message}"
    raise
  rescue JSON::ParserError => e
    Rails.logger.error "Forecast API JSON parse error: #{e.message}"
    raise
  end
end

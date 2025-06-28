class FrostDates
  attr_reader :id, :zip_code, :location_name, :lat, :lon, :spring_frost, :fall_frost

  def initialize(location, spring, fall)
    @id = nil
    @zip_code = location[:zip]
    @location_name = location[:name]
    @lat = location[:lat]
    @lon = location[:lon]
    @spring_frost = spring
    @fall_frost = fall
  end
end

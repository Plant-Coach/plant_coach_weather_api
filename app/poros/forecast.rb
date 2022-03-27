class Forecast
  attr_reader :date, :high, :low, :day_conditions, :night_conditions
  
  def initialize(data)
    @date = data[:Date]
    @high = data[:Temperature][:Maximum][:Value]
    @low = data[:Temperature][:Minimum][:Value]
    @day_conditions = data[:Day][:IconPhrase]
    @night_conditions = data[:Night][:IconPhrase]
  end
end

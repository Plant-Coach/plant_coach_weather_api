class Api::V1::ForecastController < ApplicationController
  def create
    forecast = WeatherFacade.get_forecast(params[:location])
    render json: ForecastSerializer.test(forecast)
  end
end

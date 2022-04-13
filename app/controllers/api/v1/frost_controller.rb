class Api::V1::FrostController < ApplicationController
  def index
    frost_dates = FrostDateFacade.get_frost_dates(params[:zip_code])
    render json: FrostDateSerializer.new(frost_dates)
  end
end

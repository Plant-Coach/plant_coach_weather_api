require 'rails_helper'

RSpec.describe '/frost API Endpoints' do
  describe 'GET /frost' do
    it 'returns the spring and fall frost dates for the zip_code provided' do
      zip_code = 80123
      get '/api/v1/frost', params: { zip_code: zip_code }
      result = JSON.parse(response.body, symbolize_names: true)
      require 'pry'; binding.pry
    end
  end
end

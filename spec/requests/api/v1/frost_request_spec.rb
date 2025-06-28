require 'rails_helper'

RSpec.describe '/frost API Endpoints' do
  describe 'GET /frost' do
    it 'returns the spring and fall frost dates for the zip_code provided' do
      zip_code = 80_123
      get '/api/v1/frost', params: { zip_code: zip_code }
      result = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful

      expect(result).to be_a Hash
      expect(result).to have_key(:data)
      expect(result[:data]).to have_key(:type)
      expect(result[:data][:type]).to eq('frost_date')
    end
  end
end

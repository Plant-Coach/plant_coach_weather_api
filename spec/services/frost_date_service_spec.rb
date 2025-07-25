require 'rails_helper'

RSpec.describe FrostDateService do
  let(:weather_station_id) { '12345' }
  
  describe '::find_weather_station' do
    let(:latitude) { 40.7128 }
    let(:longitude) { -74.0060 }
     
    it 'retrieves the closest weather station to the coordinates', :vcr do
      data = FrostDateService.find_weather_station(39.7392, -104.9903)
      expect(data).to be_an Array

      expect(data[0]).to have_key(:id)
      expect(data[0][:id]).to be_a String

      expect(data[0]).to have_key(:name)
      expect(data[0][:name]).to be_a String

      expect(data[0]).to have_key(:lat)
      expect(data[0][:lat]).to be_a String

      expect(data[0]).to have_key(:lon)
      expect(data[0][:lon]).to be_a String
    end

    context 'when a Timeout error occurs' do
      it 'returns nil and logs the error' do
        allow(Faraday).to receive(:new).and_raise(Faraday::TimeoutError.new('Timeout'))
        allow(Rails.logger).to receive(:error)

        result = FrostDateService.find_weather_station(latitude, longitude)

        expect(result).to be_nil
        
        expect(Rails.logger).to have_received(:error).with(/Weather station API network error/)
      end
    end
    
    context 'when a ConnectionFailed error occurs' do
      it 'returns nil and logs the error' do
        allow(Faraday).to receive(:new).and_raise(Faraday::ConnectionFailed.new('ConnectionFailed'))
        allow(Rails.logger).to receive(:error)

        result = FrostDateService.find_weather_station(latitude, longitude)

        expect(result).to be_nil
        
        expect(Rails.logger).to have_received(:error).with(/Weather station API network error/)
      end
    end
    context 'when a ParserError error occurs' do
      it 'returns nil and logs the error', :vcr do
        allow(JSON).to receive(:parse).and_raise(JSON::ParserError.new('ParserError'))
        allow(Rails.logger).to receive(:error)

        result = FrostDateService.find_weather_station(latitude, longitude)

        expect(result).to be_nil
        
        expect(Rails.logger).to have_received(:error).with(/Weather station API JSON parse error/)
      end
    end
  end

  describe '::get_spring_frost_dates' do
    it 'returns all the spring frost date probabilities for a given location', :vcr do
      data = FrostDateService.get_spring_frost_dates('54762')

      expect(data).to be_an Array

      expect(data[1]).to have_key(:season_id)
      expect(data[1][:season_id]).to eq('1')

      expect(data[1]).to have_key(:temperature_threshold)
      expect(data[1][:temperature_threshold]).to eq('32')

      expect(data[1]).to have_key(:prob_50)
      expect(data[1][:prob_50]).to be_a String
    end
    
    context 'when a Timeout error occurs' do
      it 'returns nil and logs the error' do
        allow(Faraday).to receive(:new).and_raise(Faraday::TimeoutError.new('Timeout'))
        allow(Rails.logger).to receive(:error)

        result = FrostDateService.get_spring_frost_dates(weather_station_id)

        expect(result).to be_nil
        
        expect(Rails.logger).to have_received(:error).with(/Spring frost dates API network error/)
      end
    end
    
    context 'when a ConnectionFailed error occurs' do
      it 'returns nil and logs the error' do
        allow(Faraday).to receive(:new).and_raise(Faraday::ConnectionFailed.new('Timeout'))
        allow(Rails.logger).to receive(:error)

        result = FrostDateService.get_spring_frost_dates(weather_station_id)

        expect(result).to be_nil
        
        expect(Rails.logger).to have_received(:error).with(/Spring frost dates API network error/)
      end
    end

    context 'when the API returns a non-200 status code' do
      it 'returns nil and logs the error' do
        fake_response = double('Response', status: 500, body: '{}')
        allow(Faraday).to receive(:new).and_return(double(get: fake_response))
        allow(Rails.logger).to receive(:error)
        
        result = FrostDateService.get_spring_frost_dates(weather_station_id)
  
        expect(result).to be_nil
       
        expect(Rails.logger).to have_received(:error).with(/Spring frost dates API request failed with status code: 500/)
      end
    end
    context 'when a ParserError error occurs' do
      it 'returns nil and logs the error', :vcr do
        allow(JSON).to receive(:parse).and_raise(JSON::ParserError.new('ParserError'))
        allow(Rails.logger).to receive(:error)

        result = FrostDateService.get_spring_frost_dates(weather_station_id)

        expect(result).to be_nil
        
        expect(Rails.logger).to have_received(:error).with(/Spring frost dates API JSON parse error/)
      end
    end
  end

  describe '::get_fall_frost_dates' do
    it 'returns all the fall frost date probabilities for a given location', :vcr do
      data = FrostDateService.get_fall_frost_dates('54762')

      expect(data).to be_an Array

      expect(data[1]).to have_key(:season_id)
      expect(data[1][:season_id]).to eq('2')

      expect(data[1]).to have_key(:temperature_threshold)
      expect(data[1][:temperature_threshold]).to eq('32')

      expect(data[1]).to have_key(:prob_50)
      expect(data[1][:prob_50]).to be_a String
    end
    
    context 'when a Timeout error occurs' do
      it 'returns nil and logs the error' do
        allow(Faraday).to receive(:new).and_raise(Faraday::TimeoutError.new('Timeout'))
        allow(Rails.logger).to receive(:error)

        result = FrostDateService.get_fall_frost_dates(weather_station_id)

        expect(result).to be_nil
        
        expect(Rails.logger).to have_received(:error).with(/Fall frost dates API network error/)
      end
    end
    
    context 'when a ConnectionFailed error occurs' do
      it 'returns nil and logs the error' do
        allow(Faraday).to receive(:new).and_raise(Faraday::ConnectionFailed.new('ConnectionFailed'))
        allow(Rails.logger).to receive(:error)

        result = FrostDateService.get_fall_frost_dates(weather_station_id)

        expect(result).to be_nil
        
        expect(Rails.logger).to have_received(:error).with(/Fall frost dates API network error/)
      end
    end

    context 'when the API returns a non-200 status code' do
      it 'returns nil and logs the error' do
        fake_response = double('Response', status: 500, body: '{}')
        allow(Faraday).to receive(:new).and_return(double(get: fake_response))
        allow(Rails.logger).to receive(:error)
        
        result = FrostDateService.get_fall_frost_dates(weather_station_id)
  
        expect(result).to be_nil
       
        expect(Rails.logger).to have_received(:error).with(/Fall frost dates API request failed with status code: 500/)
      end
    end
    context 'when a ParserError error occurs' do
      it 'returns nil and logs the error', :vcr do
        allow(JSON).to receive(:parse).and_raise(JSON::ParserError.new('ParserError'))
        allow(Rails.logger).to receive(:error)

        result = FrostDateService.get_fall_frost_dates(weather_station_id)

        expect(result).to be_nil
        
        expect(Rails.logger).to have_received(:error).with(/Fall frost dates API JSON parse error/)
      end
    end
  end
end

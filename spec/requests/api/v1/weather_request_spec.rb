require 'rails_helper'

RSpec.describe 'Weather API Endpoints' do
  describe 'POST /forecast' do
    it 'returns a full payload of forecast data' do
      location_params = { location: "80123" }
      post "/api/v1/forecast", params: location_params
      forecast = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful

      expect(forecast).to have_key(:data)

      expect(forecast[:data]).to be_an Hash
      expect(forecast[:data][:type]).to eq("forecast")
      expect(forecast[:data]).to have_key(:attributes)
      expect(forecast[:data][:attributes]).to be_a Hash

      expect(forecast[:data][:attributes]).to have_key(:lat)
      expect(forecast[:data][:attributes]).to have_key(:lon)
      expect(forecast[:data][:attributes]).to have_key(:current_weather)
      expect(forecast[:data][:attributes][:current_weather]).to be_a Hash

      expect(forecast[:data][:attributes]).to have_key(:daily_weather)
      expect(forecast[:data][:attributes][:daily_weather]).to be_a Array

      expect(forecast[:data][:attributes]).to have_key(:hourly_weather)
      expect(forecast[:data][:attributes][:hourly_weather]).to be_a Array

      expect(forecast[:data][:attributes][:current_weather]).to have_key(:id)
      expect(forecast[:data][:attributes][:current_weather][:id]).to be nil

      expect(forecast[:data][:attributes][:current_weather]).to have_key(:date)
      expect(forecast[:data][:attributes][:current_weather][:date].to_datetime).to be_a DateTime

      expect(forecast[:data][:attributes][:current_weather]).to have_key(:temp)
      expect(forecast[:data][:attributes][:current_weather][:temp]).to be_a(Integer).or be_a(Float)

      expect(forecast[:data][:attributes][:current_weather]).to have_key(:humidity)
      expect(forecast[:data][:attributes][:current_weather][:humidity]).to be_a(Integer).or be_a(Float)

      expect(forecast[:data][:attributes][:current_weather]).to have_key(:clouds)
      expect(forecast[:data][:attributes][:current_weather][:clouds]).to be_a(Integer).or be_a(Float)

      expect(forecast[:data][:attributes][:current_weather]).to have_key(:wind)
      expect(forecast[:data][:attributes][:current_weather][:wind]).to be_a(Integer).or be_a(Float)

      expect(forecast[:data][:attributes][:current_weather]).to have_key(:weather)
      expect(forecast[:data][:attributes][:current_weather][:weather]).to be_an Array

      forecast[:data][:attributes][:current_weather][:weather].each do |weather|
        expect(weather).to have_key(:code)
        expect(weather[:code]).to be_an Integer

        expect(weather).to have_key(:category)
        expect(weather[:category]).to be_a String

        expect(weather).to have_key(:description)
        expect(weather[:description]).to be_a String

        expect(weather).to have_key(:icon)
        expect(weather[:icon]).to be_a String
      end

      expect(forecast[:data][:attributes][:current_weather]).to have_key(:rain)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:snow)

      forecast[:data][:attributes][:daily_weather].each do |weather_data|
        expect(weather_data).to have_key(:date)

        expect(weather_data).to have_key(:sunrise)
        expect(weather_data[:sunrise]).to be_a Integer

        expect(weather_data).to have_key(:sunset)
        expect(weather_data[:sunset]).to be_a Integer

        expect(weather_data).to have_key(:high)
        expect(weather_data[:high]).to be_a Float

        expect(weather_data).to have_key(:low)
        expect(weather_data[:low]).to be_a Float

        expect(weather_data).to have_key(:humidity)
        expect(weather_data[:humidity]).to be_a Integer

        expect(weather_data).to have_key(:wind)
        expect(weather_data[:wind]).to be_a(Float).or be_an(Integer)

        expect(weather_data).to have_key(:weather)
        weather_data[:weather].each do |weather_description|
          expect(weather_description).to have_key(:code)
          expect(weather_description[:code]).to be_an Integer

          expect(weather_description).to have_key(:category)
          expect(weather_description[:category]).to be_a String

          expect(weather_description).to have_key(:description)
          expect(weather_description[:description]).to be_a String

          expect(weather_description).to have_key(:icon)
          expect(weather_description[:icon]).to be_a String
        end

        expect(weather_data).to have_key(:probability_of_precipitation)
        expect(weather_data[:probability_of_precipitation]).to be_an(Integer).or be_a(Float)
        expect(weather_data[:probability_of_precipitation]).to be <= 1

        expect(weather_data).to have_key(:rain)
        expect(weather_data).to have_key(:snow)
      end

      forecast[:data][:attributes][:hourly_weather].each do |weather|
        expect(weather).to have_key(:date)
        expect(weather).to have_key(:humidity)
        expect(weather).to have_key(:id)
        expect(weather).to have_key(:probability_of_precipitation)
        expect(weather).to have_key(:rain)
        expect(weather).to have_key(:snow)

        expect(weather).to have_key(:weather)
        weather[:weather].each do |weather_description|
          expect(weather_description).to have_key(:code)
          expect(weather_description[:code]).to be_an Integer

          expect(weather_description).to have_key(:category)
          expect(weather_description[:category]).to be_a String

          expect(weather_description).to have_key(:description)
          expect(weather_description[:description]).to be_a String

          expect(weather_description).to have_key(:icon)
          expect(weather_description[:icon]).to be_a String
        end
        expect(weather).to have_key(:wind)
      end
    end
  end
end

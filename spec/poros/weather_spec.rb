require 'rails_helper'

RSpec.describe Weather do
  describe 'a basic weather object' do
    it 'exists' do
      weather = Weather.new
      expect(weather).to be_a Weather
    end
  end
end

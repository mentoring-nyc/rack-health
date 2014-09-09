require 'spec_helper'
require 'pry'

describe Rack::Respond do
  describe 'GET /ping' do

    let(:app) do
      lambda { |env|
        [200, {'Content-Type' => 'text/plain'}, ["Hello, World!"]]
      }
    end

    it 'should return, PONG, when receiving a request, ping' do
      app_response = double(:response, body: 'PONG')
      Rack::Respond.any_instance.stub(:new).with(app, routes: 'ping', response: 'PONG')
      expect(app_response.body).to eq('PONG')
    end
  end
end


require 'spec_helper'

describe Rack::Respond do
  describe '#call' do
    it 'should return, /PONG, as the body of the response when receiving a request, /ping' do
      env = {'PATH_INFO' => '/ping'}
      app = double('Rack::Middleware', call: true)
      respond = Rack::Respond.new(app, routes: '/ping', response: '/PONG')
      expect(respond.call(env)).to eq([200, {'Content-Type' => 'text/plain'}, '/PONG'])
    end
  end
end


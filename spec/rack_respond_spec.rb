require 'spec_helper'

describe Rack::Respond do
  describe '#call' do
    let(:app) {double('Rack::Middleware', call: true)}
    let(:respond) {Rack::Respond.new(app, routes: ['/ping', '/PING'], response: ['/PONG'])}

    describe 'when the env hashs path_info contains either, /ping, or /PONG' do

      let(:env) {{'PATH_INFO' => '/PING'}}

      describe 'when the env hashs path_info contains, /PING' do
        it 'should return, [/PONG], as the body of the response ' do
          expect(respond.call(env).last).to eq(['/PONG'])
        end
      end

      describe 'when the env hash path_info contains, /ping' do
        let(:env) {{'PATH_INFO' => '/ping'}}

        it 'should return, [/PONG], as the body of the response ' do
          expect(respond.call(env).last).to eq(['/PONG'])
        end
      end

      it 'should return status, 200, in the response' do
        expect(respond.call(env).first).to eq(200)
      end

      it 'should return as a default, text/plain, for the headers content-type' do
        expect(respond.call(env)[1]).to eq({'Content-Type' => 'text/plain'})
      end
    end

    describe 'when the env hash path_info does not contain, /ping or /PING' do
      let(:env) {{'PATH_INFO' => '/'}}

      it 'does not return an array with [/PONG] in the body' do
        expect(respond.call(env)).to_not match_array([200, {'Content-Type' => 'text/plain'}, ['/PONG']])
      end

      it 'calls the next Middleware' do
        expect(respond.call(env)).to eq(true)
      end
    end
  end
end


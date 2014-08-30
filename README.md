rack-respond
===========

Monitoring middleware

Installation
============

    $ bundle

On the first line of the applications config.ru file, enter:  

    require 'rack-resond'
    use Rack::Respond, routes: ['ping', 'PING'], response: ['PONG']

Test Application's Health
=========================

Example:
http://localhost:3000/ping

Response:
PONG

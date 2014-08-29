rack-health-check
===========

Monitoring middleware

Installation
============

$ bundle

On the first line of the applications config.ru file, enter:  

require 'rack_health_check'
use Rack::HealthCheck, routes: ['ping', 'PING'], response: ['PONG']

Test Application's Health
=========================

Example:
http://localhost:3000/ping

Response:
PONG

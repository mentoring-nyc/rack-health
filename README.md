rack-respond
===========

Monitoring middleware

Installation
============

    $ bundle

On the first line of the applications config.ru file, enter:  

    require 'rack-respond'
    use Rack::Respond, routes: ['ping', 'PING'], response: ['PONG']


Request/Response
=========================

    Request: /ping

    Response Body: PONG


Run Test
========

    $ rspec

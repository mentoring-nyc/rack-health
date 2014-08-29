Gem::Specification.new do |s|
  s.name        = 'rack-health-check'
  s.version     = '0.0.4'
  s.date        = '2014-08-29'
  s.summary     = 'Find out if your web application goes down immediatley'
  s.description = 'this gem monitors the deployed status of your web application
    and will let you know if your application is running or not. By creating a 
    response, PONG, from a request with, /ping or /PING, in the url you will learn
    quickly the status of your application because the response from your deployed 
    rack based app will not need to go through all its middlewares.'
  s.authors     = ['Chad Pry', 'Rob Jewell']
  s.email       = ['jewell.robertp@gmail.com']
  s.files       = ['lib/rack_health_check.rb']
  s.homepage    = 'http://rubygems.org/gems/rack-health'
  s.license     = 'MIT'
end

require File.expand_path('../lib/rack/respond/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors     = ['Rob Jewell', 'Chad W Pry']
  gem.email       = ['jewell.robertp@gmail.com', 'chad.pry@gmail.com']
  gem.description = %q{Ascertain the health of your deployed application without
                       needing to go through your entire applications middlewares} 
  gem.summary     = %q{Monitor the health of an application}
  gem.name        = 'rack-respond'
  gem.version     = Rack::Respond::VERSION 
  gem.date        = '2014-08-29'
  gem.files       = `git ls-files`.split("\n") 
  gem.require_paths = ['lib']
  gem.homepage    = 'http://rubygems.org/gems/rack-respond'
  gem.license     = 'MIT'

  gem.add_development_dependency("rake")
  gem.add_development_dependency("rspec")
  gem.add_development_dependency("pry")
end

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "cheepnis"
  gem.homepage = "http://github.com/farmisen/cheepnis"
  gem.license = "MIT"
  gem.summary = %Q{Small library that makes heroku workers more affordable}
  gem.description = %Q{Cheepnis is a small library that makes it easy for Heroku-based applications to spin up worker processes when needed, and shuts them down when they are finished. This gem is Fabrice Armisen's fork}
  gem.email = "farmisen@gmail.com"
  gem.authors = ["Mike Travers"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  gem.add_runtime_dependency 'heroku'
  gem.add_runtime_dependency 'delayed_job', '~> 2.1'
end
Jeweler::RubygemsDotOrgTasks.new

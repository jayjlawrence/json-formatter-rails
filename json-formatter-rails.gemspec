# -*- encoding: utf-8 -*-
require File.expand_path('../lib/json-formatter-rails/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "json-formatter-rails"
  s.version     = JsonFormatter::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jay Lawrence"]
  s.email       = ["jayjlawrence70@gmail.com"]
  s.homepage    = "https://github.com/jayjlawrence/json-formatter-rails.git"
  s.summary     = "A JavaScript-based JSON formatter for your Rails views"
  s.description = "This gem provides a JavaScript-based JSON viewer for your Rails 4+ application."
  s.license     = "MIT"

  s.required_ruby_version = ">= 1.9.3"
  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "railties", ">= 4.2.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path = 'lib'
end

# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails4_client_side_validations/version"

Gem::Specification.new do |s|
  s.name        = "rails4_client_side_validations"
  s.version     = Rails4ClientSideValidations::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Vassil Kalkov"]
  s.email       = ["vassilkalkov@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Client Side Validations}
  s.description = %q{Client Side Validations}

  s.files         = `git ls-files -- {lib/*,vendor/*,*.gemspec}`.split("\n")
  s.require_paths = ["lib"]

  s.add_development_dependency 'rails', '~> 4.0.0.rc1'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'm'

  # For QUnit testing
  s.add_development_dependency 'sinatra', '~> 1.0'
  s.add_development_dependency 'shotgun'
  s.add_development_dependency 'thin'
  s.add_development_dependency 'json'
  s.add_development_dependency 'coffee-script'
  s.add_development_dependency 'jquery-rails'
end

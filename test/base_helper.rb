require 'rubygems'
require 'bundler/setup'
require 'test/unit'
require 'mocha'
require 'rails'
require 'rails4_client_side_validations/config'

module TestApp
  class Application < Rails::Application
    config.root = File.dirname(__FILE__)
    config.active_support.deprecation = :log
    config.logger = Logger.new(STDOUT)
    config.eager_load = false
    config.secret_key_base = "secretkey123"
  end
end

module Rails4ClientSideValidations; end

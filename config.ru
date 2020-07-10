# frozen_string_literal: true

require 'bundler'
Bundler.require

require './app'

use Rack::SslEnforcer if ENV['RACK_ENV'] == 'production'

run App

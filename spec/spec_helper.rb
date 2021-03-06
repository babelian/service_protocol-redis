# frozen_string_literal: true

require 'simplecov'
SimpleCov.start

require 'bundler/setup'
require 'service_protocol/redis'

RSpec.configure do |config|
  if ENV['_'].to_s.match?(/guard/)
    config.filter_run focus: true
    config.run_all_when_everything_filtered = true
  end
end

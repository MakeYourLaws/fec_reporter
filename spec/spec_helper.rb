require 'rubygems'
require 'bundler/setup'

require 'rspec'
require 'fech'
require 'fec_reporter'

RSpec.configure do |config|
  config.mock_framework = :mocha
end
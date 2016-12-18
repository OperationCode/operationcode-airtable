$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require "simplecov"
SimpleCov.start

require 'operationcode/airtable'
require "mocha/mini_test"

require 'minitest/autorun'

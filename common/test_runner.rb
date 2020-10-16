# require "test_manifest.yml"
require_relative "logger.rb"

class TestRunner
  attr_accessor :logger, :tests

  def initialize(logger)
    @logger = logger
    @tests = []
    logger.log "Test Runner Initialized."
  end

  def run
    logger.log "Test Runs are beginnning."
    @tests.each do |test|
      # I've forgotten how to instantate an object
      # basaed on a string with the class name.
      # Get the main object from the test file.
      # Run the main call on the test object.
      # How to get the correct input?
    end
  end

  def register_test(test_name)
    @tests << test_name
  end

end
logger = Logger.new
TestRunner.new(logger).run()

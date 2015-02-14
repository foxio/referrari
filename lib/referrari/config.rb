require 'active_support/configurable'

module Referrari

  def self.configure(&block)
    yield @config ||= Referrari::Configuration.new
  end

  def self.config
    @config
  end

  class Configuration
    include ActiveSupport::Configurable
    config_accessor :example_setting # An example of defining a config property
  end

  # Set default values for config properties
  configure do |config|
    config.example_setting = "example value"
  end

end

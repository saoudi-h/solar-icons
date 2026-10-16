# frozen_string_literal: true

module SolarIcons
  class Configuration
    attr_accessor :default_weight, :default_size, :default_attrs

    def initialize
      @default_weight = "linear"
      @default_size = 24
      @default_attrs = {}
    end
  end

  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield configuration
    end

    def reset_configuration!
      @configuration = Configuration.new
    end
  end
end

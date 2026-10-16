# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "solar_icons"
require "active_support"
require "active_support/core_ext/string/output_safety"

RSpec.configure do |config|
  config.before { SolarIcons.reset_configuration! }
end

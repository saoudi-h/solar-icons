# frozen_string_literal: true

require "solar_icons/version"
require "solar_icons/configuration"
require "solar_icons/helpers"
require "solar_icons/railtie" if defined?(::Rails)

module SolarIcons
  class << self
    def icons_root
      @icons_root ||= File.expand_path("solar_icons/icons", __dir__)
    end

    attr_writer :icons_root

    def icon_names(style)
      Dir[File.join(icons_root, style.to_s.tr("_", "-"), "*.svg")]
        .map { |file| File.basename(file, ".svg") }
        .sort
    end
  end
end

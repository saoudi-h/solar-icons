# frozen_string_literal: true

module SolarIcons
  class Railtie < ::Rails::Railtie
    initializer "solar_icons.helpers" do
      ActiveSupport.on_load(:action_view) do
        include SolarIcons::Helpers
      end
    end
  end
end

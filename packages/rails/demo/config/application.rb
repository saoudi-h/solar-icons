# frozen_string_literal: true

require_relative "boot"
require "rails"
require "action_controller/railtie"
require "action_view/railtie"

module Demo
  class Application < Rails::Application
    Bundler.require(*Rails.groups)
    config.load_defaults 8.0
    config.eager_load = false
    # Local playground only: accept every host (docker, LAN, tunnels).
    config.hosts.clear
    # Dummy key, never deploy this app anywhere shared.
    config.secret_key_base = "demo-only-insecure-key-do-not-use-in-production"
  end
end

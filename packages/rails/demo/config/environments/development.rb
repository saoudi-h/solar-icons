# frozen_string_literal: true

Rails.application.configure do
  config.consider_all_requests_local = true
  config.action_controller.perform_caching = false
end

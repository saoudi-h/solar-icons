# frozen_string_literal: true

Rails.application.routes.draw do
  root "gallery#index"
  get "gallery/icons", to: "gallery#icons"
end

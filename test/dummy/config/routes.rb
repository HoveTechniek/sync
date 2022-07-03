# frozen_string_literal: true

Rails.application.routes.draw do
  mount Sync::Engine => '/sync'
end

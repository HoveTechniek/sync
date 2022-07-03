# frozen_string_literal: true

Sync::Engine.routes.draw do
  resources :workorders
  resources :outsmart_customers do
    patch 'synchronise', on: :member
  end
  resources :outsmart_projects

  root 'user_page/profile#index'
end

# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
      resources :users
      resources :comments
      root to: 'users#index'
    end

  root to: 'home#index'
end

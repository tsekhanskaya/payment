# frozen_string_literal: true

Rails.application.routes.draw do
  resources :homes
  devise_for :users
  root to: 'homes#index'
end

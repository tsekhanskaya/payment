# frozen_string_literal: true

Rails.application.routes.draw do
  # resources :homes
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # root to: 'homes#index'
  get '/', to: 'orders#index'
  post '/orders/submit', to: 'orders#submit'
end

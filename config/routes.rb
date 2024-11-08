Rails.application.routes.draw do
  # Devise configuration for admin users within ActiveAdmin
  devise_for :admin_users, ActiveAdmin::Devise.config.merge({ controllers: { sessions: 'admin_users/sessions' } })

  # ActiveAdmin routes
  ActiveAdmin.routes(self)

  # Wrap custom OTP routes in devise_scope for admin_users
  devise_scope :admin_user do
    get "verify_otp" => "admin_users/sessions#verify_otp"
    post "verify_otp_code" => "admin_users/sessions#verify_otp_code"
  end


  # Other resource routes
  resources :products

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Root route (customize as needed)
  # root "posts#index"
end
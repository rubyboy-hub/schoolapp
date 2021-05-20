# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  get 'home/privacy_policy'
  root 'home#index'
  # devise_for :users, controllers: {confirmations: 'confirmations'}
  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
}
  # devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

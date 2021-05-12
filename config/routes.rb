Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'books#index'

  resources :authors
  resources :books
  resources :categories
end

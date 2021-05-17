Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Routes for stories
  resources :stories do
    resources :comments
    resource :favourite
  end

  # routes for users
  resources :users
  # Routes for sessions
  resource :session

  # Set homepage as stories index page
  root 'stories#index'

  # Add new pages and their urls
  get 'about', to: 'pages#about'
  get 'our-story', to: 'pages#our_story'
  get 'terms-and-conditions', to: 'pages#terms'

  get 'favourites', to: 'favourites#index'
end

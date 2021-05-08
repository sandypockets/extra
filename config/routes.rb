Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Routes for stories
  resources :stories

  # Set homepage as stories index page
  root 'stories#index'

end

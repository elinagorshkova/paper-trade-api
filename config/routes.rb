# frozen_string_literal: true

Rails.application.routes.draw do
  resources :positions
  resources :portfolios
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  get 'search_stocks' => 'stocks#search'
end

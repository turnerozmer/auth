Rails.application.routes.draw do
  resources :companies
  resources :sessions
  resources :contacts
  resources :activities
  resources :tasks
  resources :users
end

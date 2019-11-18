Rails.application.routes.draw do
  resources :questions
  resources :courses
  resources :tags
  devise_for :users
  get 'home/index'

  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

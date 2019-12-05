Rails.application.routes.draw do
  resources :courses
  resources :tags
  resources :questions
  devise_for :users

  root to: 'questions#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

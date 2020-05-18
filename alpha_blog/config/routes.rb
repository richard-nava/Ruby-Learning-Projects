Rails.application.routes.draw do
  resources :users, except: [:new]
  resources :articles
  root "articles#index"
  get "signup", to: "users#new"
  get "login", to: "users#login"
  get "edit", to: "users#edit"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

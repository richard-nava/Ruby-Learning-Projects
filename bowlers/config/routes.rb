Rails.application.routes.draw do
  resources :users
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"
  get "about", to: "pages#about"
  get "services", to: "pages#services"
  get "articles", to: "articles#index"
end

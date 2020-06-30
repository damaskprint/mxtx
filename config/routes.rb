Rails.application.routes.draw do
  devise_for :accounts
  resources :posts
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "public#home"
end


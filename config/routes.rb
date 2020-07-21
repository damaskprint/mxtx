Rails.application.routes.draw do
    devise_for :accounts
    resources :posts do
      member do
        patch :flag
      end
    end
    resources :categories
    
    root to: "public#home"
  match 'accounts/:id' => 'accounts#destroy', :via => :delete

  resources :accounts, only: :show
end



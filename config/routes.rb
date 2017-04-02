Rails.application.routes.draw do
  get 'services/index'

  # Devise routes for admin and end user Implemented by Prashant Chaudhari 27 March 2017
  devise_for :users
  devise_scope :user do
    get "login", to: "devise/sessions#new"
    get '/users/sign_out' => 'devise/sessions#destroy'
    delete '/users/sign_out' => 'devise/sessions#destroy'
    authenticated :user do
      root :to => 'admin/dashboard#index', as: :authenticated_root
    end
    unauthenticated :user do
      root :to => 'users/sessions#new', as: :unauthenticated_root
    end
  end

  resources :users do
    resources :services
  end
  ActiveAdmin.routes(self)

  # get '/services' => 'services#index', as: :user_services

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

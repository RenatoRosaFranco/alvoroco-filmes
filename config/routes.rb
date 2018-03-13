require 'sidekiq/web'

Rails.application.routes.draw do

  # Dashboard 
  # @implemented
  namespace :dashboard do
    get 'home/index'
    resources :categories
    resources :projects 
    resources :movies
    resources :posts
    resources :newsletters
    resources :users
    # Monitoring 
    # @implemented
    mount Sidekiq::Web => '/sidekiq'
  end

  # Authentication
  # @implemented
  devise_for :users

  # Application
  # @implemented
  root to: 'home#index'
  resource  :contact, only: %i{create}
  resource  :newsletter, only: %i{create}
  get       'newsletter/:token' => 'newsletter#cancel', as: :cancel_newsletter
  resources :movies, only: %i{index show}
  resources :projects, only: %i{index show}
  
  # Blog namespace
  # @implemented
  namespace :blog do 
     resources :posts, only: [:index, :show]
  end
  
  # Application
  # @implemented 
  namespace :api, constraint: { subdomain: 'api '}  do 
  	namespace :v1 do 
  	   with_options only: [:index, :show] do |list|
  	   	 list.resources :projects
  	   	 list.resources :movies
  	   end
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

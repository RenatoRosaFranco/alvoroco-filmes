Rails.application.routes.draw do

  # Dashboard 
  # @implemented
  namespace :dashboard do
    get 'home/index'
    resources :projects 
    resources :movies
  end

  # Authentication
  # @implemented
  devise_for :users

  # Application
  # @implemented
  root to: 'home#index'
  resource :contact, only: %i{create}
  resource :newsletter, only: %i{create}

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

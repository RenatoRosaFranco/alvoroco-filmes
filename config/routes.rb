Rails.application.routes.draw do

  # Dashboard 
  # @implemented
  namespace :dashboard do
    get 'home/index'
  end

  # Application
  # @implemented
  root to: 'home#index'

  # Application
  # @implemented 
  namespace :api, constraint: { subdomain: 'api '}  do 
  	namespace :v1 do 
  	   with_options do |list|
  	   	 list.resources :projects
  	   	 list.resoruces :movies
  	   end
  	end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

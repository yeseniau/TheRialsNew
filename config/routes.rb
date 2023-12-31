Rails.application.routes.draw do
  resources :comments
  get 'welcome/index'
  resources :notices
  
  devise_for :users, controllers:{
	  sessions:'users/sessions',
	  registrations: 'users/registrations'
  }
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end

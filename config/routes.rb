Crowdfunder::Application.routes.draw do

  root :to => "projects#index"
	get "logout" => "sessions#destroy", :as => "logout"
	get "login" => "sessions#new", :as => "login"
	get "signup" => "users#new", :as => "signup"
  
  resources :projects

  resources :users, except: [:index]

  resources :sessions, :only => [:new, :create, :destroy]

end

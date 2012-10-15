Funpages::Application.routes.draw do

  devise_for :users

  devise_scope :user do
  	get 'users/sign_out' => 'devise/sessions#destroy'	
  end

	root :to => 'home#index'

	controller :home do
		match 'home', :action => 'index', :as => 'home'
		match 'second', :action => 'second', :as => 'second'
	end

	resources :posts
	
end

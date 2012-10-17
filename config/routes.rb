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

	controller :profile do
		match 'profile', :action => 'index', :as => 'profile'
		match 'profile/edit', :action => 'edit', :as => 'profile_edit'
	end

	resources :posts
	
end

Funpages::Application.routes.draw do
  
  root :to => 'home#index'

  controller :home do
		match 'home', :action => 'index', :as => 'home'
  	match 'second', :action => 'second', :as => 'second'
  end

end

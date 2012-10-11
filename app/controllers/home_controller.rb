class HomeController < ApplicationController

	layout 'two_column'

	def index
		@hello = 'Hello world!'
		@fruits = ['apple', 'banana', 'custard', 'water melon']
	end

	def second
		render :layout => 'application'
	end

end

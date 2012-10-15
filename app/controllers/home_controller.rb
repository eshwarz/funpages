class HomeController < ApplicationController

	before_filter :authenticate_user!

	layout 'two_column'

	def index
		@hello = 'Hello world!'
		@fruits = ['apple', 'banana', 'custard', 'water melon']
	end

	def second
		render :layout => 'application'
	end

	def posts
		@posts = Post.all
	end

end

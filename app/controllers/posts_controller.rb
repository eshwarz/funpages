class PostsController < ApplicationController

	before_filter :authenticate_user!

	def index
		@posts = Post.all		
	end

	def show
		@post = Post.find params[:id]
	end

	def new
		@post = Post.new
	end

	def create
		if params[:post]
			Post.create params[:post]
		end
		redirect_to posts_path
	end

	def edit
		@post = Post.find params[:id]
	end

	def update
		if params[:post]
			@post = Post.find params[:id]
			@post.update_attributes params[:post]
		end
		redirect_to posts_path
	end


	def destroy
		if params[:id]
			@post = Post.delete params[:id]
		end
		redirect_to posts_path
	end

end
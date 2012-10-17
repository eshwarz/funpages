class ProfileController < ApplicationController
	
	def vars
		@user = current_user
		@profile = @user.profile
	end
	
	def index
		vars
	end

	def edit
		vars
		
	end

end
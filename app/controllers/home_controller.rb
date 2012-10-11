class HomeController < ApplicationController

	def index
		@hello = 'Hello world!'
		@fruits = ['apple', 'banana', 'custard', 'water melon']
	end

end

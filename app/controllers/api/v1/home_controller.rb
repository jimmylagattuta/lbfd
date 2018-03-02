class Api::V1::HomeController < ApplicationController
	
	def index 
		@x = Strain.all
		render 'index.html.erb'
	end

end

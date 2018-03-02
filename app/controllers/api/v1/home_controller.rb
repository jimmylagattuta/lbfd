class Api::V1::HomeController < ApplicationController
	
	def index 
		@strains = Strain.all
		render 'index.html.erb'
	end

end

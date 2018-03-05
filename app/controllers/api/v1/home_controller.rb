class Api::V1::HomeController < ApplicationController
	
	def index 
		@strains = Strain.all
		render 'index.html.erb'
	end

	def index_studio_city

		render 'index_studio_city.html.erb'
	end

	def signup
		@user = User.new(username: params[:username],
					     admin: true,
					     password: params[:password],
					     password_confirmation: params[:password_confirmation]
					    )
		@user.save
		if @user.save
			session[:user_id] = @user_id
			flash[:success] = "You Successfully Signed Up!!!"
		else
			flash[:danger] = "Invalid Match"
		end
	end

end

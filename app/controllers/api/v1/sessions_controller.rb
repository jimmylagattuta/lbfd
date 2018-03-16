class Api::V1::SessionsController < ApplicationController
  	protect_from_forgery with: :null_session
	skip_before_action :verify_authenticity_token
	def new
	end

	def create
		user = User.find_by(username: params[:username])

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:success] = "You Have Successfully Logged In"
			redirect_to "/"
		else
			flash[:danger] = "Invalid Email or Password"
			redirect_to "/"
		end
	end


	def destroy
		if session[:user_id]
			session[:user_id] = nil
			# flash[:info] = "You Successfully Logged Out"
			redirect_to "/"
		end
	end
end

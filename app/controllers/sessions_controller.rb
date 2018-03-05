class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(username: params[:username])

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:success] = "You Have Successfully Logged In"
			redirect_to "/products"
		else
			flash[:danger] = "Invalid Email or Password"
			redirect_to "/"
		end
	end


	def destroy
		if session[:user_id]
			session[:user_id] = nil
			flash[:info] = "You Successfully Logged Out"
			redirect_to "/products"
		else
			flash[:info] = "No Users are Signed in"
			redirect_to "/products"
		end
	end
end

class Api::V1::HomeController < ApplicationController
  	protect_from_forgery with: :null_session
	skip_before_action :verify_authenticity_token
	
	def index 
		@strains = Strain.all
		@indicas = []
		@sativas = []
		@concentrates = []
		@edibles = []
		@items = []
		item_inventory = Item.all
		item_inventory.each do |item|
			if item.location == 'Long Beach' || item.location == 'LB ST'
				@items << item
			end
		end
		@long_beach_strains = []
		@strains.each do |strain|
			if strain.location == 'Long Beach' || strain.location == 'LB ST'
				if strain.variety == 'Indica'
					@indicas << strain
				elsif strain.variety == 'Sativa'
					@sativas << strain
				elsif strain.variety == 'Concentrate'
					@concentrates << strain
				elsif strain.variety == 'Edible'
					@edibles << strain
				end

			end
		end
		render 'index.html.erb'
	end

	def index_studio_city
		@strains = Strain.all
		@indicas = []
		@sativas = []
		@concentrates = []
		@edibles = []
		@items = []
		item_inventory = Item.all
		item_inventory.each do |item|
			if item.location == 'Studio City' || item.location || 'LB ST'
				@items << item
			end
		end
		@strains.each do |strain|
			if strain.location == 'Studio City' || strain.location == 'LB ST'
				if strain.variety == 'Indica'
					@indicas << strain
				elsif strain.variety == 'Sativa'
					@sativas << strain
				elsif strain.variety == 'Concentrate'
					@concentrates << strain
				elsif strain.variety == 'Edible'
					@edibles << strain
				end			end	
		end
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

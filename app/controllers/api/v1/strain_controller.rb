class Api::V1::StrainController < ApplicationController
	# https://cdn.pixabay.com/photo/2017/02/28/14/50/weed-2105966__340.jpg
  	protect_from_forgery with: :null_session
	skip_before_action :verify_authenticity_token
	def add_strain
		n = params['name']
		v = params['variety']
		donation_g = params['donation_g']
		donation_e = params['donation_e']
		donation_h = params['donation_h']
		donation_o = params['donation_o']
		i = params['strain_image']
		location = params['location']
		q = params['quantity']
		new_strain = Strain.create(name: n, 
								   variety: v,
								   donation_o: donation_o,
								   donation_h: donation_h,
								   donation_g: donation_g,
								   donation_e: donation_e,
								   image: i,
								   location: location,
								   quantity: q
								)
		redirect_to '/'
	end

	def edit_strain
		strain = Strain.find_by(id: params[:id])
		n = params['name']
		v = params['variety']
		donation_g = params['donation_g']
		donation_e = params['donation_e']
		donation_h = params['donation_h']
		donation_o = params['donation_o']
		i = params['strain_image']
		location = params['location']
		q = params['quantity']

		strain.name = n
		strain.variety = v
		strain.donation_g = donation_g
		strain.donation_e = donation_e	
		strain.donation_h = donation_h	
		strain.donation_o = donation_o
		strain.image = i
		strain.location = location
		strain.quantity = q
		strain.save
		if strain.save
			puts "*" * 100
		else 
			puts strain.errors.full_messages
		end
		redirect_to '/'

	end
end


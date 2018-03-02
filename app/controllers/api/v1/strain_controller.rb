class Api::V1::StrainController < ApplicationController
	# https://cdn.pixabay.com/photo/2017/02/28/14/50/weed-2105966__340.jpg
	def add_strain
		n = params['name']
		v = params['variety']
		donation_g = params['donation_g']
		donation_e = params['donation_e']
		donation_h = params['donation_h']
		donation_o = params['donation_o']
		i = params['strain_image']
		new_strain = Strain.create(name: n, 
								   variety: v,
								   donation_o: donation_o,
								   donation_h: donation_h,
								   donation_g: donation_g,
								   donation_e: donation_e,
								   image: i
								)
		redirect_to 'index.html.erb'
	end
end


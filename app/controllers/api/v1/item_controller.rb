class Api::V1::ItemController < ApplicationController
	def add_item
		n = params['name']
		d = params['description']
		c = params['cost']
		q = params['quantity']
		l = params['location']
		i = params['image']
		new_item = Item.create(name: n,
							   description: d,
							   cost: c,
							   quantity: q,
							   location: l,
							   image: i
							)
		redirect_to '/'
	end

	def edit_item
		item = Item.find_by(id: params[:id])
		n = params['name']
		d = params['description']
		c = params['cost']
		q = params['quantity']
		l = params['location']
		i = params['image']

		item.name = n
		item.description = d
		item.cost = c
		item.quantity = q
		item.location = l
		item.image = i
		item.save
		if item.save
			puts "*" * 100
		else
			puts "&" * 100
			puts strain.errors.full_messages
			puts "&" * 100
		end
		redirect_to '/'
	end





end

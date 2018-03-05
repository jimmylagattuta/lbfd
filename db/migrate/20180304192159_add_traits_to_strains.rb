class AddTraitsToStrains < ActiveRecord::Migration[5.0]
  def change
  	add_column :strains, :location_id, :integer
  	add_column :strains, :all_locations, :boolean
  	add_column :items, :location_id, :integer
  	add_column :items, :all_locations, :boolean
  end
end

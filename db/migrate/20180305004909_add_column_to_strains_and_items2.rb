class AddColumnToStrainsAndItems2 < ActiveRecord::Migration[5.0]
  def change
  	add_column :strains, :location, :string
  	add_column :items, :location, :string
  end
end

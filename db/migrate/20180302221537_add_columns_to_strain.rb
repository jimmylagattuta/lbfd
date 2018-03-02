class AddColumnsToStrain < ActiveRecord::Migration[5.0]
  def change
  	add_column :strains, :donation_g, :integer
  	add_column :strains, :donation_e, :integer
  	add_column :strains, :donation_h, :integer
  	add_column :strains, :donation_o, :string
  	remove_column :strains, :cost, :decimal
  	add_column :strains, :image, :string
  end
end

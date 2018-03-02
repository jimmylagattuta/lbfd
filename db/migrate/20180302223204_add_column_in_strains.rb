class AddColumnInStrains < ActiveRecord::Migration[5.0]
  def change
  	add_column :strains, :donation_o, :integer
  end
end

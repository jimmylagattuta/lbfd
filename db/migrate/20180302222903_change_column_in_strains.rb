class ChangeColumnInStrains < ActiveRecord::Migration[5.0]
  def change
  	remove_column :strains, :donation_o, :string
  end
end

class ChangeDecimals < ActiveRecord::Migration[5.0]
  def change
  	change_column :items, :cost, :decimal, precision: 9, scale: 2
  	change_column :items, :quantity, :decimal, precision: 9, scale: 2
  	change_column :strains, :cost, :decimal, precision: 9, scale: 2
  	change_column :strains, :quantity, :decimal, precision: 9, scale: 2
  end
end

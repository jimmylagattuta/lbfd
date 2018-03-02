class CreateStrains < ActiveRecord::Migration[5.0]
  def change
    create_table :strains do |t|
      t.string :name
      t.string :variety
      t.decimal :quantity
      t.decimal :cost

      t.timestamps
    end
  end
end

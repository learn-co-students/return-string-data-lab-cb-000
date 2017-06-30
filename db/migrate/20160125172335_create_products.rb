class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :description
    	t.integer :inventory
      t.string :name
      t.integer :price
      t.timestamps null: false
    end
  end
end

class AddDescAndInvToProducts < ActiveRecord::Migration
  def change
    add_column :products, :description, :text
    add_column :products, :inventory, :intger
  end
end

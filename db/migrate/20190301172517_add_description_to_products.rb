class AddDescriptionToProducts < ActiveRecord::Migration
  def change
    add_column :products, :description, :text_area
  end
end

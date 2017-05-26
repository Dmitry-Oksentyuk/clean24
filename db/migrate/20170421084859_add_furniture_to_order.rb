class AddFurnitureToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :furniture, :string
  end
end

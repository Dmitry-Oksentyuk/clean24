class AddCarpetToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :carpet, :string
  end
end

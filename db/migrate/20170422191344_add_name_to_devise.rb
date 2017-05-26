class AddNameToDevise < ActiveRecord::Migration
  def change
    add_column :devises, :name, :string
  end
end

class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :city
      t.string :street
      t.integer :house
      t.integer :housing
      t.string :phone
      t.integer :flat
      t.datetime :date

      t.timestamps null: false
    end
  end
end

class AddPhoneUserToDevise < ActiveRecord::Migration
def self.up
  change_table :users do |t|
    ## Database authenticatable
    t.change :phone_user, :string, null: false, default: ""
  end
end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end

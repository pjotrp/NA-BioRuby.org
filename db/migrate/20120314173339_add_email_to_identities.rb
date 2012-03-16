class AddEmailToIdentities < ActiveRecord::Migration
  def change
    add_column :identities, :email, :string

  end
end

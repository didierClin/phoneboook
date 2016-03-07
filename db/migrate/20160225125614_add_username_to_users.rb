class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :phone, :string
    add_column :users, :subscribe, :boolean
    add_column :users, :gender, :boolean
    add_column :users, :address, :string
    add_column :users, :citycode, :integer
    add_column :users, :city, :string
  end
end

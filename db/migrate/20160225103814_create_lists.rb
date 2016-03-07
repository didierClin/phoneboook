class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :username
      t.string :phone
      t.boolean :subscribe
      t.boolean :gender
      t.string :address
      t.integer :citycode
      t.string :city
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

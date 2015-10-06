class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :guardian
      t.string :father
      t.string :mother
      t.string :email
      t.string :address
      t.integer :phone
      t.integer :private_number
      t.string :county
      t.string :country

      t.timestamps null: false
    end
  end
end

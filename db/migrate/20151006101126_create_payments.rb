class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :amount
      t.date :payment_date
      t.string :paid_by

      t.timestamps null: false
    end
  end
end

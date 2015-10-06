class CreatePaymentTypes < ActiveRecord::Migration
  def change
    create_table :payment_types do |t|
      t.string :type
      t.string :transaction_id
      t.string :specify_other

      t.timestamps null: false
    end
  end
end

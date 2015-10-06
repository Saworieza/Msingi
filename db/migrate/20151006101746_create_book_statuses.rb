class CreateBookStatuses < ActiveRecord::Migration
  def change
    create_table :book_statuses do |t|
      t.string :status
      t.string :comment

      t.timestamps null: false
    end
  end
end

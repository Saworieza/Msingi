class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :surname
      t.string :gender
      t.date :dob
      t.string :nationality

      t.timestamps null: false
    end
  end
end

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :surname
      t.string :gender
      t.date :dob
      t.string :status
      t.string :employer
      t.date :employment_date
      t.string :nationality
      t.string :employer_id
      t.string :education

      t.timestamps null: false
    end
  end
end

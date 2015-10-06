class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :name
      t.string :attachment
      t.date :start_date
      t.date :end_date
      t.integer :passmark

      t.timestamps null: false
    end
  end
end

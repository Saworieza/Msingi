class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :name
      t.date :reported_date
      t.string :details

      t.timestamps null: false
    end
  end
end

class CreateExamManagements < ActiveRecord::Migration
  def change
    create_table :exam_managements do |t|

      t.timestamps null: false
    end
  end
end

class AddTermIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :term_id, :integer
  end
end

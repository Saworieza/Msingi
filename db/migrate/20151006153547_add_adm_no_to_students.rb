class AddAdmNoToStudents < ActiveRecord::Migration
  def change
    add_column :students, :adm_no, :integer
  end
end

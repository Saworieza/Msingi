class AddMarksToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :marks, :integer
  end
end

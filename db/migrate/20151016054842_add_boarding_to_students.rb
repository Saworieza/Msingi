class AddBoardingToStudents < ActiveRecord::Migration
  def change
    add_column :students, :boarding, :string
  end
end

class AddClassroomToStudents < ActiveRecord::Migration
  def change
    classroom = Classroom.create! number: "1"
    add_reference :students, :classroom, index: true, foreign_key: true, default: classroom.id
  end
end

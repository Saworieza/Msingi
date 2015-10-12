class AddStreamToStudents < ActiveRecord::Migration
  def change
    student = Student.create! surname: "Student Name"
    add_reference :students, :stream, index: true, foreign_key: true, default: student.id
  end
end

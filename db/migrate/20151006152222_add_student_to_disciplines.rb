class AddStudentToDisciplines < ActiveRecord::Migration
  def change
    discipline = Discipline.create! name: "indiscipline"
    add_reference :disciplines, :student, index: true, foreign_key: true, default: discipline.id
  end
end

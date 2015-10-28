class AddTermToExams < ActiveRecord::Migration
  def change
    term = Term.create! name: "Two"
    add_reference :exams, :term, index: true, foreign_key: true,default: term.id
  end
end

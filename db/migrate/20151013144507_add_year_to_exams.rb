class AddYearToExams < ActiveRecord::Migration
  def change
    year = Year.create! year: "2016"
    add_reference :exams, :year, index: true, foreign_key: true, default: year.id
  end
end

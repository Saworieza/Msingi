class AddStudentToContacts < ActiveRecord::Migration
  def change
    add_reference :contacts, :student, index: true, foreign_key: true
  end
end

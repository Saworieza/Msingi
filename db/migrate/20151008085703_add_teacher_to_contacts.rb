class AddTeacherToContacts < ActiveRecord::Migration
  def change
    add_reference :contacts, :teacher, index: true, foreign_key: true
  end
end

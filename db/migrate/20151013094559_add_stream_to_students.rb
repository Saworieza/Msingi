class AddStreamToStudents < ActiveRecord::Migration
  def change
    stream = Stream.create! name: "default"
    add_reference :students, :stream, index: true, foreign_key: true, default: stream.id
  end
end

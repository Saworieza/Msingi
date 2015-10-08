class AddClassroomToStreams < ActiveRecord::Migration
  def change
    stream = Stream.create! name: "name"
    add_reference :streams, :classroom, index: true, foreign_key: true, default: stream.id
  end
end

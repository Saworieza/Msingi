class RemoveAttachmentFromExams < ActiveRecord::Migration
  def change
    remove_column :exams, :attachment, :string
  end
end

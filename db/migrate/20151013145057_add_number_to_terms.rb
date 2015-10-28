class AddNumberToTerms < ActiveRecord::Migration
  def change
    add_column :terms, :number, :integer
  end
end

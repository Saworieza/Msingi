class Student < ActiveRecord::Base
    has_many :contacts, dependent: :destroy
    accepts_nested_attributes_for :contacts
    
    belongs_to :classroom
    belongs_to :stream
end

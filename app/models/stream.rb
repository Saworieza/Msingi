class Stream < ActiveRecord::Base
    belongs_to :classroom
    
    has_many :students
end

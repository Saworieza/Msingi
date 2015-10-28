class Subject < ActiveRecord::Base
    has_many :disciplines
    belongs_to :student
end

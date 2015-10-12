class Classroom < ActiveRecord::Base
    has_many :streams
    has_many :students
end

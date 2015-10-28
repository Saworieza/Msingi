class Student < ActiveRecord::Base
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    
    has_many :contacts, dependent: :destroy
    accepts_nested_attributes_for :contacts
    
    has_many :subjects, dependent: :destroy
    accepts_nested_attributes_for :subjects
    
    #has_many :contacts, dependent: :destroy
    #accepts_nested_attributes_for :contacts
   
    #has_many :streams, dependent: :destroy
    #accepts_nested_attributes_for :streams
    
    belongs_to :classroom
    belongs_to :stream
end

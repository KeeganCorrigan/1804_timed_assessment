class Student < ApplicationRecord
  has_many :courses, through: :student_courses
  has_many :addresses
  has_many :courses


  validates_presence_of :name
end

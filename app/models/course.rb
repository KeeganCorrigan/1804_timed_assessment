class Course < ApplicationRecord
  has_many :students, through: :student_courses
  has_many :students


  validates_presence_of :name
end

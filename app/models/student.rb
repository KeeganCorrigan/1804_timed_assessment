class Student < ApplicationRecord
  has_many :addresses
  has_many :courses

  has_many :courses, through: :student_courses

  validates_presence_of :name
end

class Course < ApplicationRecord
  has_many :students

  has_many :students, through: :studentcourses

  validates_presence_of :name
end

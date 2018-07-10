class Student < ApplicationRecord
  has_many :addresses
  has_many :courses

  has_many :courses, through: :studentcourses

  validates_presence_of :name
end

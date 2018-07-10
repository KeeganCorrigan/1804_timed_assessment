class Address < ApplicationRecord
  belongs_to :student
  validates_presence_of :street, :city, :state, :zip_code

end

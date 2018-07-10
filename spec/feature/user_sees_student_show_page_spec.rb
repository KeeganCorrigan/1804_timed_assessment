require 'rails_helper'

describe 'user visits student show' do
  it 'sees the name of a student' do
    student_1 = Student.create!(name: "uiohasd")

    visit student_path(student_1)

    expect(page).to have_content(student_1.name) 
  end
end

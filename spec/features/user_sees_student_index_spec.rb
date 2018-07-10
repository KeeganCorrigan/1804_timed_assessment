require 'rails_helper'

describe "user visits /students" do
  it "sees a list of all" do
    student_1 = Student.create!(name: "uiohasd")
    student_2 = Student.create!(name: "uasdoiasihasd")


    visit students_path

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)

  end
end

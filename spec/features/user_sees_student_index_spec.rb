require 'rails_helper'

describe "user visits /students" do
  it "sees a list of all" do
    student_1 = Student.create!(name: "uiohasd")
    student_2 = Student.create!(name: "uasdoiasihasd")

    visit students_path

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
  end

  it "can delete a student from index" do
    student_1 = Student.create!(name: "uiohasd")

    visit students_path

    click_on "delete"

    expect(current_path).to eq(students_path)
    expect(page).to_not have_content(student_1.name)
    expect(Student.all.count).to eq(0)
  end

  it "can link to student by clicking on student name" do
    student_1 = Student.create!(name: "uiohasd")
    student_2 = Student.create!(name: "uasdoiasihasd")

    visit students_path



    click_on student_1.name

    expect(current_path).to eq(student_path(student_1))
    expect(page).to have_content(student_1.name)
  end
end

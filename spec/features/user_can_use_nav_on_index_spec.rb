require "rails_helper"

describe "a user can use the nav" do
  it "can click on create student from index" do

    visit students_path

    click_on "create student"

    expect(current_path).to eq(new_student_path)
  end

  it "can click on students index from edit" do
    student_1 = Student.create!(name: "ohasio")

    visit edit_student_path(student_1)

    click_on "all students"

    expect(current_path).to eq(students_path)
    expect(page).to have_content(student_1.name)
  end
end

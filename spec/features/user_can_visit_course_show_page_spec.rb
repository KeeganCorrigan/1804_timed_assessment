require "rails_helper"

describe "a user visits course show page" do
  it "can view list of students in that course" do
    course_1 = Course.create!(name: "oijasi")
    student_1 = course_1.students.create!(name: "ohasd")
    student_2 = course_1.students.create!(name: "pijasuh")

    visit course_path(course_1)

    expect(current_path).to have_content(student_1.name)
    expect(current_path).to have_content(student_2.name)
  end
end

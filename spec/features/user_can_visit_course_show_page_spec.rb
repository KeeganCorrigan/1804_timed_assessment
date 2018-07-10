require "rails_helper"

describe "a user visits course show page" do
  it "can view list of students in that course" do
    student_1 = Student.create!(name: "asd")
    student_2 = Student.create!(name: "aaaaaaa")
    course_1 = Course.create!(name: "zzzzzzzz")
    StudentCourse.create!(student_id: student_1.id, course_id: course_1.id)
    StudentCourse.create!(student_id: student_2.id, course_id: course_1.id)

    visit course_path(course_1)

    expect(current_path).to have_content(student_1.name)
    expect(current_path).to have_content(student_2.name)
  end
end

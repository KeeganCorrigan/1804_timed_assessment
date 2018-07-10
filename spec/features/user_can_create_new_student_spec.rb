require 'rails_helper'

describe "user visits /students/new" do
  it "can fill out a form and create a new student" do
    new_name = "asdii"

    visit new_student_path

    fill_in :student_name, with: new_name

    click_on "Create Student"

    expect(current_path).to eq(student_path(Student.last.id))
    expect(page).to have_content(new_name)
  end
end

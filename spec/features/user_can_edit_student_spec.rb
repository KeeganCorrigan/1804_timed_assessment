require "rails_helper"

describe "a user visits edit_student_path" do
  it "can update student name" do
    old_name = "iuhasdiuh"
    student_1 = Student.create!(name: old_name)
    new_name = "iuihuiuhasd"

    visit edit_student_path(student_1)

    fill_in :student_name, with: new_name

    click_on "Update Student"

    expect(current_path).to eq(student_path(student_1))
    expect(page).to have_content(new_name)
    expect(page).to_not have_content(old_name)
  end
end

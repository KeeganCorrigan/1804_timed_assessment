require "rails_helper"

describe "a user visits student show page" do
  it "can update student name" do
    street = "asdoias"
    city = "oiuwer"
    state = "oija"
    zip_code = 1234
    student_1 = Student.create!(name: "asdiuhasd")

    visit new_student_address_path(student_1)

    fill_in "address[street]", with: street
    fill_in "address[city]", with: city
    fill_in "address[state]", with: state
    fill_in "address[zip_code]", with: zip_code

    click_on "Create Address"

    save_and_open_page

    expect(current_path).to eq(student_path(student_1))
    expect(page).to have_content(street)
    expect(page).to have_content(city)
    expect(page).to have_content(state)
    expect(page).to have_content("Zip code: #{zip_code}")
  end
end

require "rails_helper"

describe "a user visits student show page" do
  it "can view address" do
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

    expect(current_path).to eq(student_path(student_1))
    expect(page).to have_content(street)
    expect(page).to have_content(city)
    expect(page).to have_content(state)
    expect(page).to have_content("Zip code: #{zip_code}")
  end
  it "can see mulitple addresses" do
    student_1 = Student.create!(name: "asdiuhasd")

    address_1 = student_1.addresses.create!(street: "asdji", city: "uhiasd", state: "oijasd", zip_code: 1)
    address_2 = student_1.addresses.create!(street: "9023j", city: "cjopjad", state: "90jasf90", zip_code: 2)

    visit student_path(student_1)

    expect(page).to have_content(address_1.street)
    expect(page).to have_content(address_2.street)
  end
end

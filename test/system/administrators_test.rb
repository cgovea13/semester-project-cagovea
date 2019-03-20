require "application_system_test_case"

class AdministratorsTest < ApplicationSystemTestCase
  setup do
    @administrator = administrators(:one)
  end

  test "visiting the index" do
    visit administrators_url
    assert_selector "h1", text: "Administrators"
  end

  test "creating a Administrator" do
    visit administrators_url
    click_on "New Administrator"

    fill_in "Email", with: @administrator.email
    fill_in "First name", with: @administrator.first_name
    fill_in "Last name", with: @administrator.last_name
    fill_in "Office number", with: @administrator.office_number
    fill_in "Phone number", with: @administrator.phone_number
    fill_in "Title", with: @administrator.title
    click_on "Create Administrator"

    assert_text "Administrator was successfully created"
    click_on "Back"
  end

  test "updating a Administrator" do
    visit administrators_url
    click_on "Edit", match: :first

    fill_in "Email", with: @administrator.email
    fill_in "First name", with: @administrator.first_name
    fill_in "Last name", with: @administrator.last_name
    fill_in "Office number", with: @administrator.office_number
    fill_in "Phone number", with: @administrator.phone_number
    fill_in "Title", with: @administrator.title
    click_on "Update Administrator"

    assert_text "Administrator was successfully updated"
    click_on "Back"
  end

  test "destroying a Administrator" do
    visit administrators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Administrator was successfully destroyed"
  end
end

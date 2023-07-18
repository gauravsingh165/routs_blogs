require "application_system_test_case"

class PiletsTest < ApplicationSystemTestCase
  setup do
    @pilet = pilets(:one)
  end

  test "visiting the index" do
    visit pilets_url
    assert_selector "h1", text: "Pilets"
  end

  test "should create pilet" do
    visit pilets_url
    click_on "New pilet"

    fill_in "Address", with: @pilet.address
    fill_in "Age", with: @pilet.age
    fill_in "Company", with: @pilet.company
    fill_in "Email", with: @pilet.email
    fill_in "Name", with: @pilet.name
    click_on "Create Pilet"

    assert_text "Pilet was successfully created"
    click_on "Back"
  end

  test "should update Pilet" do
    visit pilet_url(@pilet)
    click_on "Edit this pilet", match: :first

    fill_in "Address", with: @pilet.address
    fill_in "Age", with: @pilet.age
    fill_in "Company", with: @pilet.company
    fill_in "Email", with: @pilet.email
    fill_in "Name", with: @pilet.name
    click_on "Update Pilet"

    assert_text "Pilet was successfully updated"
    click_on "Back"
  end

  test "should destroy Pilet" do
    visit pilet_url(@pilet)
    click_on "Destroy this pilet", match: :first

    assert_text "Pilet was successfully destroyed"
  end
end

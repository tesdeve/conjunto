require "application_system_test_case"

class ResidentsTest < ApplicationSystemTestCase
  setup do
    @resident = residents(:one)
  end

  test "visiting the index" do
    visit residents_url
    assert_selector "h1", text: "Residents"
  end

  test "creating a Resident" do
    visit residents_url
    click_on "New Resident"

    check "Principal" if @resident.principal
    fill_in "Property", with: @resident.property_id
    click_on "Create Resident"

    assert_text "Resident was successfully created"
    click_on "Back"
  end

  test "updating a Resident" do
    visit residents_url
    click_on "Edit", match: :first

    check "Principal" if @resident.principal
    fill_in "Property", with: @resident.property_id
    click_on "Update Resident"

    assert_text "Resident was successfully updated"
    click_on "Back"
  end

  test "destroying a Resident" do
    visit residents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resident was successfully destroyed"
  end
end

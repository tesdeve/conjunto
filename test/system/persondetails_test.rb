require "application_system_test_case"

class PersondetailsTest < ApplicationSystemTestCase
  setup do
    @persondetail = persondetails(:one)
  end

  test "visiting the index" do
    visit persondetails_url
    assert_selector "h1", text: "Persondetails"
  end

  test "creating a Persondetail" do
    visit persondetails_url
    click_on "New Persondetail"

    fill_in "Apellido", with: @persondetail.apellido
    fill_in "Cedula", with: @persondetail.cedula
    fill_in "Edad", with: @persondetail.edad
    fill_in "Huella digital", with: @persondetail.huella_digital
    fill_in "Nombre", with: @persondetail.nombre
    fill_in "Personable", with: @persondetail.personable_id
    fill_in "Personable type", with: @persondetail.personable_type
    click_on "Create Persondetail"

    assert_text "Persondetail was successfully created"
    click_on "Back"
  end

  test "updating a Persondetail" do
    visit persondetails_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @persondetail.apellido
    fill_in "Cedula", with: @persondetail.cedula
    fill_in "Edad", with: @persondetail.edad
    fill_in "Huella digital", with: @persondetail.huella_digital
    fill_in "Nombre", with: @persondetail.nombre
    fill_in "Personable", with: @persondetail.personable_id
    fill_in "Personable type", with: @persondetail.personable_type
    click_on "Update Persondetail"

    assert_text "Persondetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Persondetail" do
    visit persondetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Persondetail was successfully destroyed"
  end
end

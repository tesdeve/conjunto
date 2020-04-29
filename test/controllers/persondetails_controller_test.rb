require 'test_helper'

class PersondetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @persondetail = persondetails(:one)
  end

  test "should get index" do
    get persondetails_url
    assert_response :success
  end

  test "should get new" do
    get new_persondetail_url
    assert_response :success
  end

  test "should create persondetail" do
    assert_difference('Persondetail.count') do
      post persondetails_url, params: { persondetail: { apellido: @persondetail.apellido, cedula: @persondetail.cedula, edad: @persondetail.edad, huella_digital: @persondetail.huella_digital, nombre: @persondetail.nombre, personable_id: @persondetail.personable_id, personable_type: @persondetail.personable_type } }
    end

    assert_redirected_to persondetail_url(Persondetail.last)
  end

  test "should show persondetail" do
    get persondetail_url(@persondetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_persondetail_url(@persondetail)
    assert_response :success
  end

  test "should update persondetail" do
    patch persondetail_url(@persondetail), params: { persondetail: { apellido: @persondetail.apellido, cedula: @persondetail.cedula, edad: @persondetail.edad, huella_digital: @persondetail.huella_digital, nombre: @persondetail.nombre, personable_id: @persondetail.personable_id, personable_type: @persondetail.personable_type } }
    assert_redirected_to persondetail_url(@persondetail)
  end

  test "should destroy persondetail" do
    assert_difference('Persondetail.count', -1) do
      delete persondetail_url(@persondetail)
    end

    assert_redirected_to persondetails_url
  end
end

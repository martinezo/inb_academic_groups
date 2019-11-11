require 'test_helper'

class Catalogs::MemberTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catalogs_member_type = catalogs_member_types(:one)
  end

  test "should get index" do
    get catalogs_member_types_url
    assert_response :success
  end

  test "should get new" do
    get new_catalogs_member_type_url
    assert_response :success
  end

  test "should create catalogs_member_type" do
    assert_difference('Catalogs::MemberType.count') do
      post catalogs_member_types_url, params: { catalogs_member_type: { name_en: @catalogs_member_type.name_en, name_es: @catalogs_member_type.name_es } }
    end

    assert_redirected_to catalogs_member_type_url(Catalogs::MemberType.last)
  end

  test "should show catalogs_member_type" do
    get catalogs_member_type_url(@catalogs_member_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_catalogs_member_type_url(@catalogs_member_type)
    assert_response :success
  end

  test "should update catalogs_member_type" do
    patch catalogs_member_type_url(@catalogs_member_type), params: { catalogs_member_type: { name_en: @catalogs_member_type.name_en, name_es: @catalogs_member_type.name_es } }
    assert_redirected_to catalogs_member_type_url(@catalogs_member_type)
  end

  test "should destroy catalogs_member_type" do
    assert_difference('Catalogs::MemberType.count', -1) do
      delete catalogs_member_type_url(@catalogs_member_type)
    end

    assert_redirected_to catalogs_member_types_url
  end
end

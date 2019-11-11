require 'test_helper'

class Catalogs::PubTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catalogs_pub_type = catalogs_pub_types(:one)
  end

  test "should get index" do
    get catalogs_pub_types_url
    assert_response :success
  end

  test "should get new" do
    get new_catalogs_pub_type_url
    assert_response :success
  end

  test "should create catalogs_pub_type" do
    assert_difference('Catalogs::PubType.count') do
      post catalogs_pub_types_url, params: { catalogs_pub_type: { name_en: @catalogs_pub_type.name_en, name_es: @catalogs_pub_type.name_es } }
    end

    assert_redirected_to catalogs_pub_type_url(Catalogs::PubType.last)
  end

  test "should show catalogs_pub_type" do
    get catalogs_pub_type_url(@catalogs_pub_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_catalogs_pub_type_url(@catalogs_pub_type)
    assert_response :success
  end

  test "should update catalogs_pub_type" do
    patch catalogs_pub_type_url(@catalogs_pub_type), params: { catalogs_pub_type: { name_en: @catalogs_pub_type.name_en, name_es: @catalogs_pub_type.name_es } }
    assert_redirected_to catalogs_pub_type_url(@catalogs_pub_type)
  end

  test "should destroy catalogs_pub_type" do
    assert_difference('Catalogs::PubType.count', -1) do
      delete catalogs_pub_type_url(@catalogs_pub_type)
    end

    assert_redirected_to catalogs_pub_types_url
  end
end

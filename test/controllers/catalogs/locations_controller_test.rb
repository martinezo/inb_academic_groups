require 'test_helper'

class Catalogs::LocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catalogs_location = catalogs_locations(:one)
  end

  test "should get index" do
    get catalogs_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_catalogs_location_url
    assert_response :success
  end

  test "should create catalogs_location" do
    assert_difference('Catalogs::Location.count') do
      post catalogs_locations_url, params: { catalogs_location: { abbr: @catalogs_location.abbr, name_en: @catalogs_location.name_en, name_es: @catalogs_location.name_es } }
    end

    assert_redirected_to catalogs_location_url(Catalogs::Location.last)
  end

  test "should show catalogs_location" do
    get catalogs_location_url(@catalogs_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_catalogs_location_url(@catalogs_location)
    assert_response :success
  end

  test "should update catalogs_location" do
    patch catalogs_location_url(@catalogs_location), params: { catalogs_location: { abbr: @catalogs_location.abbr, name_en: @catalogs_location.name_en, name_es: @catalogs_location.name_es } }
    assert_redirected_to catalogs_location_url(@catalogs_location)
  end

  test "should destroy catalogs_location" do
    assert_difference('Catalogs::Location.count', -1) do
      delete catalogs_location_url(@catalogs_location)
    end

    assert_redirected_to catalogs_locations_url
  end
end

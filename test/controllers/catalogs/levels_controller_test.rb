require 'test_helper'

class Catalogs::LevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catalogs_level = catalogs_levels(:one)
  end

  test "should get index" do
    get catalogs_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_catalogs_level_url
    assert_response :success
  end

  test "should create catalogs_level" do
    assert_difference('Catalogs::Level.count') do
      post catalogs_levels_url, params: { catalogs_level: { name_en: @catalogs_level.name_en, name_es: @catalogs_level.name_es } }
    end

    assert_redirected_to catalogs_level_url(Catalogs::Level.last)
  end

  test "should show catalogs_level" do
    get catalogs_level_url(@catalogs_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_catalogs_level_url(@catalogs_level)
    assert_response :success
  end

  test "should update catalogs_level" do
    patch catalogs_level_url(@catalogs_level), params: { catalogs_level: { name_en: @catalogs_level.name_en, name_es: @catalogs_level.name_es } }
    assert_redirected_to catalogs_level_url(@catalogs_level)
  end

  test "should destroy catalogs_level" do
    assert_difference('Catalogs::Level.count', -1) do
      delete catalogs_level_url(@catalogs_level)
    end

    assert_redirected_to catalogs_levels_url
  end
end

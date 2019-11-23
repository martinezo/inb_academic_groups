require 'test_helper'

class Catalogs::DepartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catalogs_department = catalogs_departments(:one)
  end

  test "should get index" do
    get catalogs_departments_url
    assert_response :success
  end

  test "should get new" do
    get new_catalogs_department_url
    assert_response :success
  end

  test "should create catalogs_department" do
    assert_difference('Catalogs::Department.count') do
      post catalogs_departments_url, params: { catalogs_department: { name_en: @catalogs_department.name_en, name_es: @catalogs_department.name_es } }
    end

    assert_redirected_to catalogs_department_url(Catalogs::Department.last)
  end

  test "should show catalogs_department" do
    get catalogs_department_url(@catalogs_department)
    assert_response :success
  end

  test "should get edit" do
    get edit_catalogs_department_url(@catalogs_department)
    assert_response :success
  end

  test "should update catalogs_department" do
    patch catalogs_department_url(@catalogs_department), params: { catalogs_department: { name_en: @catalogs_department.name_en, name_es: @catalogs_department.name_es } }
    assert_redirected_to catalogs_department_url(@catalogs_department)
  end

  test "should destroy catalogs_department" do
    assert_difference('Catalogs::Department.count', -1) do
      delete catalogs_department_url(@catalogs_department)
    end

    assert_redirected_to catalogs_departments_url
  end
end

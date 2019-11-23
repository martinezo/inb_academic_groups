require "application_system_test_case"

class Catalogs::DepartmentsTest < ApplicationSystemTestCase
  setup do
    @catalogs_department = catalogs_departments(:one)
  end

  test "visiting the index" do
    visit catalogs_departments_url
    assert_selector "h1", text: "Catalogs/Departments"
  end

  test "creating a Department" do
    visit catalogs_departments_url
    click_on "New Catalogs/Department"

    fill_in "Name en", with: @catalogs_department.name_en
    fill_in "Name es", with: @catalogs_department.name_es
    click_on "Create Department"

    assert_text "Department was successfully created"
    click_on "Back"
  end

  test "updating a Department" do
    visit catalogs_departments_url
    click_on "Edit", match: :first

    fill_in "Name en", with: @catalogs_department.name_en
    fill_in "Name es", with: @catalogs_department.name_es
    click_on "Update Department"

    assert_text "Department was successfully updated"
    click_on "Back"
  end

  test "destroying a Department" do
    visit catalogs_departments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Department was successfully destroyed"
  end
end

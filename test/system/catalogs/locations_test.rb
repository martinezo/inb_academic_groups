require "application_system_test_case"

class Catalogs::LocationsTest < ApplicationSystemTestCase
  setup do
    @catalogs_location = catalogs_locations(:one)
  end

  test "visiting the index" do
    visit catalogs_locations_url
    assert_selector "h1", text: "Catalogs/Locations"
  end

  test "creating a Location" do
    visit catalogs_locations_url
    click_on "New Catalogs/Location"

    fill_in "Abbr", with: @catalogs_location.abbr
    fill_in "Name en", with: @catalogs_location.name_en
    fill_in "Name es", with: @catalogs_location.name_es
    click_on "Create Location"

    assert_text "Location was successfully created"
    click_on "Back"
  end

  test "updating a Location" do
    visit catalogs_locations_url
    click_on "Edit", match: :first

    fill_in "Abbr", with: @catalogs_location.abbr
    fill_in "Name en", with: @catalogs_location.name_en
    fill_in "Name es", with: @catalogs_location.name_es
    click_on "Update Location"

    assert_text "Location was successfully updated"
    click_on "Back"
  end

  test "destroying a Location" do
    visit catalogs_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Location was successfully destroyed"
  end
end

require "application_system_test_case"

class Catalogs::PubTypesTest < ApplicationSystemTestCase
  setup do
    @catalogs_pub_type = catalogs_pub_types(:one)
  end

  test "visiting the index" do
    visit catalogs_pub_types_url
    assert_selector "h1", text: "Catalogs/Pub Types"
  end

  test "creating a Pub type" do
    visit catalogs_pub_types_url
    click_on "New Catalogs/Pub Type"

    fill_in "Name en", with: @catalogs_pub_type.name_en
    fill_in "Name es", with: @catalogs_pub_type.name_es
    click_on "Create Pub type"

    assert_text "Pub type was successfully created"
    click_on "Back"
  end

  test "updating a Pub type" do
    visit catalogs_pub_types_url
    click_on "Edit", match: :first

    fill_in "Name en", with: @catalogs_pub_type.name_en
    fill_in "Name es", with: @catalogs_pub_type.name_es
    click_on "Update Pub type"

    assert_text "Pub type was successfully updated"
    click_on "Back"
  end

  test "destroying a Pub type" do
    visit catalogs_pub_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pub type was successfully destroyed"
  end
end

require "application_system_test_case"

class Catalogs::LevelsTest < ApplicationSystemTestCase
  setup do
    @catalogs_level = catalogs_levels(:one)
  end

  test "visiting the index" do
    visit catalogs_levels_url
    assert_selector "h1", text: "Catalogs/Levels"
  end

  test "creating a Level" do
    visit catalogs_levels_url
    click_on "New Catalogs/Level"

    fill_in "Name en", with: @catalogs_level.name_en
    fill_in "Name es", with: @catalogs_level.name_es
    click_on "Create Level"

    assert_text "Level was successfully created"
    click_on "Back"
  end

  test "updating a Level" do
    visit catalogs_levels_url
    click_on "Edit", match: :first

    fill_in "Name en", with: @catalogs_level.name_en
    fill_in "Name es", with: @catalogs_level.name_es
    click_on "Update Level"

    assert_text "Level was successfully updated"
    click_on "Back"
  end

  test "destroying a Level" do
    visit catalogs_levels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Level was successfully destroyed"
  end
end

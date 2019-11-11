require "application_system_test_case"

class Catalogs::MemberTypesTest < ApplicationSystemTestCase
  setup do
    @catalogs_member_type = catalogs_member_types(:one)
  end

  test "visiting the index" do
    visit catalogs_member_types_url
    assert_selector "h1", text: "Catalogs/Member Types"
  end

  test "creating a Member type" do
    visit catalogs_member_types_url
    click_on "New Catalogs/Member Type"

    fill_in "Name en", with: @catalogs_member_type.name_en
    fill_in "Name es", with: @catalogs_member_type.name_es
    click_on "Create Member type"

    assert_text "Member type was successfully created"
    click_on "Back"
  end

  test "updating a Member type" do
    visit catalogs_member_types_url
    click_on "Edit", match: :first

    fill_in "Name en", with: @catalogs_member_type.name_en
    fill_in "Name es", with: @catalogs_member_type.name_es
    click_on "Update Member type"

    assert_text "Member type was successfully updated"
    click_on "Back"
  end

  test "destroying a Member type" do
    visit catalogs_member_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member type was successfully destroyed"
  end
end

require "application_system_test_case"

class Catalogs::StatusesTest < ApplicationSystemTestCase
  setup do
    @catalogs_status = catalogs_statuses(:one)
  end

  test "visiting the index" do
    visit catalogs_statuses_url
    assert_selector "h1", text: "Catalogs/Statuses"
  end

  test "creating a Status" do
    visit catalogs_statuses_url
    click_on "New Catalogs/Status"

    fill_in "Name", with: @catalogs_status.name
    click_on "Create Status"

    assert_text "Status was successfully created"
    click_on "Back"
  end

  test "updating a Status" do
    visit catalogs_statuses_url
    click_on "Edit", match: :first

    fill_in "Name", with: @catalogs_status.name
    click_on "Update Status"

    assert_text "Status was successfully updated"
    click_on "Back"
  end

  test "destroying a Status" do
    visit catalogs_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Status was successfully destroyed"
  end
end

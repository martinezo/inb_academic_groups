require "application_system_test_case"

class MemberPublicationsTest < ApplicationSystemTestCase
  setup do
    @member_publication = member_publications(:one)
  end

  test "visiting the index" do
    visit member_publications_url
    assert_selector "h1", text: "Member Publications"
  end

  test "creating a Member publication" do
    visit member_publications_url
    click_on "New Member Publication"

    fill_in "Group member", with: @member_publication.group_member_id
    fill_in "Publication", with: @member_publication.publication_id
    click_on "Create Member publication"

    assert_text "Member publication was successfully created"
    click_on "Back"
  end

  test "updating a Member publication" do
    visit member_publications_url
    click_on "Edit", match: :first

    fill_in "Group member", with: @member_publication.group_member_id
    fill_in "Publication", with: @member_publication.publication_id
    click_on "Update Member publication"

    assert_text "Member publication was successfully updated"
    click_on "Back"
  end

  test "destroying a Member publication" do
    visit member_publications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member publication was successfully destroyed"
  end
end

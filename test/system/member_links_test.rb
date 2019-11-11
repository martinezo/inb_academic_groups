require "application_system_test_case"

class MemberLinksTest < ApplicationSystemTestCase
  setup do
    @member_link = member_links(:one)
  end

  test "visiting the index" do
    visit member_links_url
    assert_selector "h1", text: "Member Links"
  end

  test "creating a Member link" do
    visit member_links_url
    click_on "New Member Link"

    fill_in "Group member", with: @member_link.group_member_id
    fill_in "Link", with: @member_link.link_id
    click_on "Create Member link"

    assert_text "Member link was successfully created"
    click_on "Back"
  end

  test "updating a Member link" do
    visit member_links_url
    click_on "Edit", match: :first

    fill_in "Group member", with: @member_link.group_member_id
    fill_in "Link", with: @member_link.link_id
    click_on "Update Member link"

    assert_text "Member link was successfully updated"
    click_on "Back"
  end

  test "destroying a Member link" do
    visit member_links_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member link was successfully destroyed"
  end
end

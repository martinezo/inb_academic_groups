require "application_system_test_case"

class GroupMembersTest < ApplicationSystemTestCase
  setup do
    @group_member = group_members(:one)
  end

  test "visiting the index" do
    visit group_members_url
    assert_selector "h1", text: "Group Members"
  end

  test "creating a Group member" do
    visit group_members_url
    click_on "New Group Member"

    fill_in "Academic career en", with: @group_member.academic_career_en
    fill_in "Academic career es", with: @group_member.academic_career_es
    fill_in "Catalogs member type", with: @group_member.catalogs_member_type_id
    fill_in "Catalogs status", with: @group_member.catalogs_status_id
    fill_in "Current position en", with: @group_member.current_position_en
    fill_in "Current position es", with: @group_member.current_position_es
    fill_in "Current workplace", with: @group_member.current_workplace
    fill_in "Email", with: @group_member.email
    fill_in "Firstname", with: @group_member.firstname
    fill_in "Group", with: @group_member.group_id
    fill_in "Lastname", with: @group_member.lastname
    fill_in "Phone numbers", with: @group_member.phone_numbers
    fill_in "Photo file name", with: @group_member.photo_file_name
    fill_in "Research photo descr en", with: @group_member.research_photo_descr_en
    fill_in "Research photo descr es", with: @group_member.research_photo_descr_es
    fill_in "Photo res file name", with: @group_member.photo_res_file_name
    fill_in "Research interest es", with: @group_member.research_interest_es
    fill_in "Research interests en", with: @group_member.research_interests_en
    click_on "Create Group member"

    assert_text "Group member was successfully created"
    click_on "Back"
  end

  test "updating a Group member" do
    visit group_members_url
    click_on "Edit", match: :first

    fill_in "Academic career en", with: @group_member.academic_career_en
    fill_in "Academic career es", with: @group_member.academic_career_es
    fill_in "Catalogs member type", with: @group_member.catalogs_member_type_id
    fill_in "Catalogs status", with: @group_member.catalogs_status_id
    fill_in "Current position en", with: @group_member.current_position_en
    fill_in "Current position es", with: @group_member.current_position_es
    fill_in "Current workplace", with: @group_member.current_workplace
    fill_in "Email", with: @group_member.email
    fill_in "Firstname", with: @group_member.firstname
    fill_in "Group", with: @group_member.group_id
    fill_in "Lastname", with: @group_member.lastname
    fill_in "Phone numbers", with: @group_member.phone_numbers
    fill_in "Photo file name", with: @group_member.photo_file_name
    fill_in "Research photo descr en", with: @group_member.research_photo_descr_en
    fill_in "Research photo descr es", with: @group_member.research_photo_descr_es
    fill_in "Photo res file name", with: @group_member.photo_res_file_name
    fill_in "Research interest es", with: @group_member.research_interest_es
    fill_in "Research interests en", with: @group_member.research_interests_en
    click_on "Update Group member"

    assert_text "Group member was successfully updated"
    click_on "Back"
  end

  test "destroying a Group member" do
    visit group_members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group member was successfully destroyed"
  end
end

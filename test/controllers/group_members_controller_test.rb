require 'test_helper'

class GroupMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_member = group_members(:one)
  end

  test "should get index" do
    get group_members_url
    assert_response :success
  end

  test "should get new" do
    get new_group_member_url
    assert_response :success
  end

  test "should create group_member" do
    assert_difference('GroupMember.count') do
      post group_members_url, params: { group_member: { academic_career_en: @group_member.academic_career_en, academic_career_es: @group_member.academic_career_es, catalogs_member_type_id: @group_member.catalogs_member_type_id, catalogs_status_id: @group_member.catalogs_status_id, current_position_en: @group_member.current_position_en, current_position_es: @group_member.current_position_es, current_workplace: @group_member.current_workplace, email: @group_member.email, firstname: @group_member.firstname, group_id: @group_member.group_id, lastname: @group_member.lastname, phone_numbers: @group_member.phone_numbers, photo_file_name: @group_member.photo_file_name, photo_res_descr_en: @group_member.photo_res_descr_en, photo_res_descr_es: @group_member.photo_res_descr_es, photo_res_file_name: @group_member.photo_res_file_name, research_interest_es: @group_member.research_interest_es, research_interests_en: @group_member.research_interests_en } }
    end

    assert_redirected_to group_member_url(GroupMember.last)
  end

  test "should show group_member" do
    get group_member_url(@group_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_member_url(@group_member)
    assert_response :success
  end

  test "should update group_member" do
    patch group_member_url(@group_member), params: { group_member: { academic_career_en: @group_member.academic_career_en, academic_career_es: @group_member.academic_career_es, catalogs_member_type_id: @group_member.catalogs_member_type_id, catalogs_status_id: @group_member.catalogs_status_id, current_position_en: @group_member.current_position_en, current_position_es: @group_member.current_position_es, current_workplace: @group_member.current_workplace, email: @group_member.email, firstname: @group_member.firstname, group_id: @group_member.group_id, lastname: @group_member.lastname, phone_numbers: @group_member.phone_numbers, photo_file_name: @group_member.photo_file_name, photo_res_descr_en: @group_member.photo_res_descr_en, photo_res_descr_es: @group_member.photo_res_descr_es, photo_res_file_name: @group_member.photo_res_file_name, research_interest_es: @group_member.research_interest_es, research_interests_en: @group_member.research_interests_en } }
    assert_redirected_to group_member_url(@group_member)
  end

  test "should destroy group_member" do
    assert_difference('GroupMember.count', -1) do
      delete group_member_url(@group_member)
    end

    assert_redirected_to group_members_url
  end
end

require 'test_helper'

class MemberLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_link = member_links(:one)
  end

  test "should get index" do
    get member_links_url
    assert_response :success
  end

  test "should get new" do
    get new_member_link_url
    assert_response :success
  end

  test "should create member_link" do
    assert_difference('MemberLink.count') do
      post member_links_url, params: { member_link: { group_member_id: @member_link.group_member_id, link_id: @member_link.link_id } }
    end

    assert_redirected_to member_link_url(MemberLink.last)
  end

  test "should show member_link" do
    get member_link_url(@member_link)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_link_url(@member_link)
    assert_response :success
  end

  test "should update member_link" do
    patch member_link_url(@member_link), params: { member_link: { group_member_id: @member_link.group_member_id, link_id: @member_link.link_id } }
    assert_redirected_to member_link_url(@member_link)
  end

  test "should destroy member_link" do
    assert_difference('MemberLink.count', -1) do
      delete member_link_url(@member_link)
    end

    assert_redirected_to member_links_url
  end
end

require 'test_helper'

class MemberPublicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_publication = member_publications(:one)
  end

  test "should get index" do
    get member_publications_url
    assert_response :success
  end

  test "should get new" do
    get new_member_publication_url
    assert_response :success
  end

  test "should create member_publication" do
    assert_difference('MemberPublication.count') do
      post member_publications_url, params: { member_publication: { group_member_id: @member_publication.group_member_id, publication_id: @member_publication.publication_id } }
    end

    assert_redirected_to member_publication_url(MemberPublication.last)
  end

  test "should show member_publication" do
    get member_publication_url(@member_publication)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_publication_url(@member_publication)
    assert_response :success
  end

  test "should update member_publication" do
    patch member_publication_url(@member_publication), params: { member_publication: { group_member_id: @member_publication.group_member_id, publication_id: @member_publication.publication_id } }
    assert_redirected_to member_publication_url(@member_publication)
  end

  test "should destroy member_publication" do
    assert_difference('MemberPublication.count', -1) do
      delete member_publication_url(@member_publication)
    end

    assert_redirected_to member_publications_url
  end
end

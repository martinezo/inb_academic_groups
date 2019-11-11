require 'test_helper'

class Catalogs::StatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catalogs_status = catalogs_statuses(:one)
  end

  test "should get index" do
    get catalogs_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_catalogs_status_url
    assert_response :success
  end

  test "should create catalogs_status" do
    assert_difference('Catalogs::Status.count') do
      post catalogs_statuses_url, params: { catalogs_status: { name: @catalogs_status.name } }
    end

    assert_redirected_to catalogs_status_url(Catalogs::Status.last)
  end

  test "should show catalogs_status" do
    get catalogs_status_url(@catalogs_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_catalogs_status_url(@catalogs_status)
    assert_response :success
  end

  test "should update catalogs_status" do
    patch catalogs_status_url(@catalogs_status), params: { catalogs_status: { name: @catalogs_status.name } }
    assert_redirected_to catalogs_status_url(@catalogs_status)
  end

  test "should destroy catalogs_status" do
    assert_difference('Catalogs::Status.count', -1) do
      delete catalogs_status_url(@catalogs_status)
    end

    assert_redirected_to catalogs_statuses_url
  end
end

require "test_helper"

class CleaningsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cleanings_index_url
    assert_response :success
  end

  test "should get new" do
    get cleanings_new_url
    assert_response :success
  end

  test "should get create" do
    get cleanings_create_url
    assert_response :success
  end

  test "should get show" do
    get cleanings_show_url
    assert_response :success
  end

  test "should get edit" do
    get cleanings_edit_url
    assert_response :success
  end

  test "should get update" do
    get cleanings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cleanings_destroy_url
    assert_response :success
  end
end

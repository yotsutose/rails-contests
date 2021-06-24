require "test_helper"

class ContestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contests_index_url
    assert_response :success
  end

  test "should get show" do
    get contests_show_url
    assert_response :success
  end

  test "should get add" do
    get contests_add_url
    assert_response :success
  end

  test "should get edit" do
    get contests_edit_url
    assert_response :success
  end
end

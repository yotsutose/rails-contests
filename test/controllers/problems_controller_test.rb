require "test_helper"

class ProblemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get problems_index_url
    assert_response :success
  end

  test "should get show" do
    get problems_show_url
    assert_response :success
  end

  test "should get add" do
    get problems_add_url
    assert_response :success
  end

  test "should get edit" do
    get problems_edit_url
    assert_response :success
  end
end

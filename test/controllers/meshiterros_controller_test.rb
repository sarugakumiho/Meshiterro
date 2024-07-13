require "test_helper"

class MeshiterrosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get meshiterros_new_url
    assert_response :success
  end

  test "should get index" do
    get meshiterros_index_url
    assert_response :success
  end

  test "should get show" do
    get meshiterros_show_url
    assert_response :success
  end

  test "should get edit" do
    get meshiterros_edit_url
    assert_response :success
  end
end

require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get users_show_url
    assert_response :success
  end

  test "should get editrails" do
    get users_editrails_url
    assert_response :success
  end

  test "should get g" do
    get users_g_url
    assert_response :success
  end

  test "should get controller" do
    get users_controller_url
    assert_response :success
  end

  test "should get users" do
    get users_users_url
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end

  test "should get editrails" do
    get users_editrails_url
    assert_response :success
  end

  test "should get g" do
    get users_g_url
    assert_response :success
  end

  test "should get controller" do
    get users_controller_url
    assert_response :success
  end

  test "should get users" do
    get users_users_url
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end

  test "should get editC" do
    get users_editC_url
    assert_response :success
  end
end

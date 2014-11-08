require 'test_helper'

class Comm013WebsiteControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get abouttheclub" do
    get :abouttheclub
    assert_response :success
  end

  test "should get howtojoin" do
    get :howtojoin
    assert_response :success
  end

  test "should get whatyouneed" do
    get :whatyouneed
    assert_response :success
  end

  test "should get clubmatters" do
    get :clubmatters
    assert_response :success
  end

  test "should get howtogetthere" do
    get :howtogetthere
    assert_response :success
  end

  test "should get links" do
    get :links
    assert_response :success
  end

end

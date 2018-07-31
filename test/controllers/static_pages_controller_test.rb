require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get ani" do
    get static_pages_ani_url
    assert_response :success
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
  end

  test "should get francois" do
    get static_pages_francois_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get JR" do
    get static_pages_JR_url
    assert_response :success
  end

  test "should get titouan" do
    get static_pages_titouan_url
    assert_response :success
  end

end

require 'test_helper'

class LoggerControllerTest < ActionDispatch::IntegrationTest
  test "should get debug" do
    get logger_debug_url
    assert_response :success
  end

  test "should get info" do
    get logger_info_url
    assert_response :success
  end

  test "should get warn" do
    get logger_warn_url
    assert_response :success
  end

  test "should get error" do
    get logger_error_url
    assert_response :success
  end

  test "should get fatal" do
    get logger_fatal_url
    assert_response :success
  end

end

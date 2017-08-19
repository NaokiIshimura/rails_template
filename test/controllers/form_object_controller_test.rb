require 'test_helper'

class FormObjectControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get form_object_input_url
    assert_response :success
  end

  test "should get output" do
    get form_object_output_url
    assert_response :success
  end

end

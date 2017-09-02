require 'test_helper'

class ValidationControllerTest < ActionDispatch::IntegrationTest
  test "should get form" do
    get validation_form_url
    assert_response :success
  end

end

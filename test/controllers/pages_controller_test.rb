require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get bravo" do
    get pages_bravo_url
    assert_response :success
  end

end

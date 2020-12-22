require 'test_helper'

class WhiskysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get whiskys_index_url
    assert_response :success
  end

end

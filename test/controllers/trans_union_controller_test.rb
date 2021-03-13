require 'test_helper'

class TransUnionControllerTest < ActionDispatch::IntegrationTest
  test "should get consumer" do
    get trans_union_consumer_url
    assert_response :success
  end

  test "should get commerce" do
    get trans_union_commerce_url
    assert_response :success
  end

end

require 'test_helper'

class ConsumersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consumer = consumers(:one)
  end

  test "should get index" do
    get consumers_url, as: :json
    assert_response :success
  end

  test "should create consumer" do
    assert_difference('Consumer.count') do
      post consumers_url, params: { consumer: { : @consumer., ConsumerNo: @consumer.ConsumerNo, user_id: @consumer.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show consumer" do
    get consumer_url(@consumer), as: :json
    assert_response :success
  end

  test "should update consumer" do
    patch consumer_url(@consumer), params: { consumer: { : @consumer., ConsumerNo: @consumer.ConsumerNo, user_id: @consumer.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy consumer" do
    assert_difference('Consumer.count', -1) do
      delete consumer_url(@consumer), as: :json
    end

    assert_response 204
  end
end

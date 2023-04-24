require "test_helper"

class LlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ll = lls(:one)
  end

  test "should get index" do
    get lls_url, as: :json
    assert_response :success
  end

  test "should create ll" do
    assert_difference("Ll.count") do
      post lls_url, params: { ll: { ll: @ll.ll } }, as: :json
    end

    assert_response :created
  end

  test "should show ll" do
    get ll_url(@ll), as: :json
    assert_response :success
  end

  test "should update ll" do
    patch ll_url(@ll), params: { ll: { ll: @ll.ll } }, as: :json
    assert_response :success
  end

  test "should destroy ll" do
    assert_difference("Ll.count", -1) do
      delete ll_url(@ll), as: :json
    end

    assert_response :no_content
  end
end

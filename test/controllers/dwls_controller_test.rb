require "test_helper"

class DwlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dwl = dwls(:one)
  end

  test "should get index" do
    get dwls_url, as: :json
    assert_response :success
  end

  test "should create dwl" do
    assert_difference("Dwl.count") do
      post dwls_url, params: { dwl: { ffddll: @dwl.ffddll } }, as: :json
    end

    assert_response :created
  end

  test "should show dwl" do
    get dwl_url(@dwl), as: :json
    assert_response :success
  end

  test "should update dwl" do
    patch dwl_url(@dwl), params: { dwl: { ffddll: @dwl.ffddll } }, as: :json
    assert_response :success
  end

  test "should destroy dwl" do
    assert_difference("Dwl.count", -1) do
      delete dwl_url(@dwl), as: :json
    end

    assert_response :no_content
  end
end

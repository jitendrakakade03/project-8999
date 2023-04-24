require "test_helper"

class JaansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jaan = jaans(:one)
  end

  test "should get index" do
    get jaans_url, as: :json
    assert_response :success
  end

  test "should create jaan" do
    assert_difference("Jaan.count") do
      post jaans_url, params: { jaan: { love: @jaan.love } }, as: :json
    end

    assert_response :created
  end

  test "should show jaan" do
    get jaan_url(@jaan), as: :json
    assert_response :success
  end

  test "should update jaan" do
    patch jaan_url(@jaan), params: { jaan: { love: @jaan.love } }, as: :json
    assert_response :success
  end

  test "should destroy jaan" do
    assert_difference("Jaan.count", -1) do
      delete jaan_url(@jaan), as: :json
    end

    assert_response :no_content
  end
end

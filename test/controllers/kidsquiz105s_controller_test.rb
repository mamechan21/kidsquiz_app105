require 'test_helper'

class Kidsquiz105sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kidsquiz105 = kidsquiz105s(:one)
  end

  test "should get index" do
    get kidsquiz105s_url
    assert_response :success
  end

  test "should get new" do
    get new_kidsquiz105_url
    assert_response :success
  end

  test "should create kidsquiz105" do
    assert_difference('Kidsquiz105.count') do
      post kidsquiz105s_url, params: { kidsquiz105: { category: @kidsquiz105.category } }
    end

    assert_redirected_to kidsquiz105_url(Kidsquiz105.last)
  end

  test "should show kidsquiz105" do
    get kidsquiz105_url(@kidsquiz105)
    assert_response :success
  end

  test "should get edit" do
    get edit_kidsquiz105_url(@kidsquiz105)
    assert_response :success
  end

  test "should update kidsquiz105" do
    patch kidsquiz105_url(@kidsquiz105), params: { kidsquiz105: { category: @kidsquiz105.category } }
    assert_redirected_to kidsquiz105_url(@kidsquiz105)
  end

  test "should destroy kidsquiz105" do
    assert_difference('Kidsquiz105.count', -1) do
      delete kidsquiz105_url(@kidsquiz105)
    end

    assert_redirected_to kidsquiz105s_url
  end
end

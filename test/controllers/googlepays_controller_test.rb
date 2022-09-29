require "test_helper"

class GooglepaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @googlepay = googlepays(:one)
  end

  test "should get index" do
    get googlepays_url
    assert_response :success
  end

  test "should get new" do
    get new_googlepay_url
    assert_response :success
  end

  test "should create googlepay" do
    assert_difference("Googlepay.count") do
      post googlepays_url, params: { googlepay: {  } }
    end

    assert_redirected_to googlepay_url(Googlepay.last)
  end

  test "should show googlepay" do
    get googlepay_url(@googlepay)
    assert_response :success
  end

  test "should get edit" do
    get edit_googlepay_url(@googlepay)
    assert_response :success
  end

  test "should update googlepay" do
    patch googlepay_url(@googlepay), params: { googlepay: {  } }
    assert_redirected_to googlepay_url(@googlepay)
  end

  test "should destroy googlepay" do
    assert_difference("Googlepay.count", -1) do
      delete googlepay_url(@googlepay)
    end

    assert_redirected_to googlepays_url
  end
end

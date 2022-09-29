require "test_helper"

class PaytmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paytm = paytms(:one)
  end

  test "should get index" do
    get paytms_url
    assert_response :success
  end

  test "should get new" do
    get new_paytm_url
    assert_response :success
  end

  test "should create paytm" do
    assert_difference("Paytm.count") do
      post paytms_url, params: { paytm: {  } }
    end

    assert_redirected_to paytm_url(Paytm.last)
  end

  test "should show paytm" do
    get paytm_url(@paytm)
    assert_response :success
  end

  test "should get edit" do
    get edit_paytm_url(@paytm)
    assert_response :success
  end

  test "should update paytm" do
    patch paytm_url(@paytm), params: { paytm: {  } }
    assert_redirected_to paytm_url(@paytm)
  end

  test "should destroy paytm" do
    assert_difference("Paytm.count", -1) do
      delete paytm_url(@paytm)
    end

    assert_redirected_to paytms_url
  end
end

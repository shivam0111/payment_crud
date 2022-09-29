require "test_helper"

class NetbankingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @netbanking = netbankings(:one)
  end

  test "should get index" do
    get netbankings_url
    assert_response :success
  end

  test "should get new" do
    get new_netbanking_url
    assert_response :success
  end

  test "should create netbanking" do
    assert_difference("Netbanking.count") do
      post netbankings_url, params: { netbanking: {  } }
    end

    assert_redirected_to netbanking_url(Netbanking.last)
  end

  test "should show netbanking" do
    get netbanking_url(@netbanking)
    assert_response :success
  end

  test "should get edit" do
    get edit_netbanking_url(@netbanking)
    assert_response :success
  end

  test "should update netbanking" do
    patch netbanking_url(@netbanking), params: { netbanking: {  } }
    assert_redirected_to netbanking_url(@netbanking)
  end

  test "should destroy netbanking" do
    assert_difference("Netbanking.count", -1) do
      delete netbanking_url(@netbanking)
    end

    assert_redirected_to netbankings_url
  end
end

require "application_system_test_case"

class PaytmsTest < ApplicationSystemTestCase
  setup do
    @paytm = paytms(:one)
  end

  test "visiting the index" do
    visit paytms_url
    assert_selector "h1", text: "Paytms"
  end

  test "should create paytm" do
    visit paytms_url
    click_on "New paytm"

    click_on "Create Paytm"

    assert_text "Paytm was successfully created"
    click_on "Back"
  end

  test "should update Paytm" do
    visit paytm_url(@paytm)
    click_on "Edit this paytm", match: :first

    click_on "Update Paytm"

    assert_text "Paytm was successfully updated"
    click_on "Back"
  end

  test "should destroy Paytm" do
    visit paytm_url(@paytm)
    click_on "Destroy this paytm", match: :first

    assert_text "Paytm was successfully destroyed"
  end
end

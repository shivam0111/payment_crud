require "application_system_test_case"

class NetbankingsTest < ApplicationSystemTestCase
  setup do
    @netbanking = netbankings(:one)
  end

  test "visiting the index" do
    visit netbankings_url
    assert_selector "h1", text: "Netbankings"
  end

  test "should create netbanking" do
    visit netbankings_url
    click_on "New netbanking"

    click_on "Create Netbanking"

    assert_text "Netbanking was successfully created"
    click_on "Back"
  end

  test "should update Netbanking" do
    visit netbanking_url(@netbanking)
    click_on "Edit this netbanking", match: :first

    click_on "Update Netbanking"

    assert_text "Netbanking was successfully updated"
    click_on "Back"
  end

  test "should destroy Netbanking" do
    visit netbanking_url(@netbanking)
    click_on "Destroy this netbanking", match: :first

    assert_text "Netbanking was successfully destroyed"
  end
end

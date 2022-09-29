require "application_system_test_case"

class GooglepaysTest < ApplicationSystemTestCase
  setup do
    @googlepay = googlepays(:one)
  end

  test "visiting the index" do
    visit googlepays_url
    assert_selector "h1", text: "Googlepays"
  end

  test "should create googlepay" do
    visit googlepays_url
    click_on "New googlepay"

    click_on "Create Googlepay"

    assert_text "Googlepay was successfully created"
    click_on "Back"
  end

  test "should update Googlepay" do
    visit googlepay_url(@googlepay)
    click_on "Edit this googlepay", match: :first

    click_on "Update Googlepay"

    assert_text "Googlepay was successfully updated"
    click_on "Back"
  end

  test "should destroy Googlepay" do
    visit googlepay_url(@googlepay)
    click_on "Destroy this googlepay", match: :first

    assert_text "Googlepay was successfully destroyed"
  end
end

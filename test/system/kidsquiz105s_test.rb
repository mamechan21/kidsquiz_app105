require "application_system_test_case"

class Kidsquiz105sTest < ApplicationSystemTestCase
  setup do
    @kidsquiz105 = kidsquiz105s(:one)
  end

  test "visiting the index" do
    visit kidsquiz105s_url
    assert_selector "h1", text: "Kidsquiz105s"
  end

  test "creating a Kidsquiz105" do
    visit kidsquiz105s_url
    click_on "New Kidsquiz105"

    fill_in "Category", with: @kidsquiz105.category
    click_on "Create Kidsquiz105"

    assert_text "Kidsquiz105 was successfully created"
    click_on "Back"
  end

  test "updating a Kidsquiz105" do
    visit kidsquiz105s_url
    click_on "Edit", match: :first

    fill_in "Category", with: @kidsquiz105.category
    click_on "Update Kidsquiz105"

    assert_text "Kidsquiz105 was successfully updated"
    click_on "Back"
  end

  test "destroying a Kidsquiz105" do
    visit kidsquiz105s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kidsquiz105 was successfully destroyed"
  end
end

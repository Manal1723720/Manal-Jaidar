require "application_system_test_case"

class WoundsTest < ApplicationSystemTestCase
  setup do
    @wound = wounds(:one)
  end

  test "visiting the index" do
    visit wounds_url
    assert_selector "h1", text: "Wounds"
  end

  test "creating a Wound" do
    visit wounds_url
    click_on "New Wound"

    fill_in "Bezeichnung", with: @wound.bezeichnung
    fill_in "Poly", with: @wound.poly_id
    fill_in "Poly type", with: @wound.poly_type
    click_on "Create Wound"

    assert_text "Wound was successfully created"
    click_on "Back"
  end

  test "updating a Wound" do
    visit wounds_url
    click_on "Edit", match: :first

    fill_in "Bezeichnung", with: @wound.bezeichnung
    fill_in "Poly", with: @wound.poly_id
    fill_in "Poly type", with: @wound.poly_type
    click_on "Update Wound"

    assert_text "Wound was successfully updated"
    click_on "Back"
  end

  test "destroying a Wound" do
    visit wounds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wound was successfully destroyed"
  end
end

require "application_system_test_case"

class ItinerariesTest < ApplicationSystemTestCase
  setup do
    @itinerary = itineraries(:one)
  end

  test "visiting the index" do
    visit itineraries_url
    assert_selector "h1", text: "Itineraries"
  end

  test "should create itinerary" do
    visit itineraries_url
    click_on "New itinerary"

    fill_in "Destination", with: @itinerary.destination_id
    fill_in "Name", with: @itinerary.name
    fill_in "Price", with: @itinerary.price
    fill_in "Url", with: @itinerary.url
    click_on "Create Itinerary"

    assert_text "Itinerary was successfully created"
    click_on "Back"
  end

  test "should update Itinerary" do
    visit itinerary_url(@itinerary)
    click_on "Edit this itinerary", match: :first

    fill_in "Destination", with: @itinerary.destination_id
    fill_in "Name", with: @itinerary.name
    fill_in "Price", with: @itinerary.price
    fill_in "Url", with: @itinerary.url
    click_on "Update Itinerary"

    assert_text "Itinerary was successfully updated"
    click_on "Back"
  end

  test "should destroy Itinerary" do
    visit itinerary_url(@itinerary)
    click_on "Destroy this itinerary", match: :first

    assert_text "Itinerary was successfully destroyed"
  end
end

require "application_system_test_case"

class BookingLogsTest < ApplicationSystemTestCase
  setup do
    @booking_log = booking_logs(:one)
  end

  test "visiting the index" do
    visit booking_logs_url
    assert_selector "h1", text: "Booking Logs"
  end

  test "creating a Booking log" do
    visit booking_logs_url
    click_on "New Booking Log"

    fill_in "Slot", with: @booking_log.slot_id
    fill_in "Vehicle", with: @booking_log.vehicle_id
    click_on "Create Booking log"

    assert_text "Booking log was successfully created"
    click_on "Back"
  end

  test "updating a Booking log" do
    visit booking_logs_url
    click_on "Edit", match: :first

    fill_in "Slot", with: @booking_log.slot_id
    fill_in "Vehicle", with: @booking_log.vehicle_id
    click_on "Update Booking log"

    assert_text "Booking log was successfully updated"
    click_on "Back"
  end

  test "destroying a Booking log" do
    visit booking_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Booking log was successfully destroyed"
  end
end

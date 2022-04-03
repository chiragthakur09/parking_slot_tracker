require 'test_helper'

class BookingLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking_log = booking_logs(:one)
  end

  test "should get index" do
    get booking_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_log_url
    assert_response :success
  end

  test "should create booking_log" do
    assert_difference('BookingLog.count') do
      post booking_logs_url, params: { booking_log: { slot_id: @booking_log.slot_id, vehicle_id: @booking_log.vehicle_id } }
    end

    assert_redirected_to booking_log_url(BookingLog.last)
  end

  test "should show booking_log" do
    get booking_log_url(@booking_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_log_url(@booking_log)
    assert_response :success
  end

  test "should update booking_log" do
    patch booking_log_url(@booking_log), params: { booking_log: { slot_id: @booking_log.slot_id, vehicle_id: @booking_log.vehicle_id } }
    assert_redirected_to booking_log_url(@booking_log)
  end

  test "should destroy booking_log" do
    assert_difference('BookingLog.count', -1) do
      delete booking_log_url(@booking_log)
    end

    assert_redirected_to booking_logs_url
  end
end

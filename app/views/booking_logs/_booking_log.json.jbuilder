json.extract! booking_log, :id, :slot_id, :vehicle_id, :created_at, :updated_at
json.url booking_log_url(booking_log, format: :json)

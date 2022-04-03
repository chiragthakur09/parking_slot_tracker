# == Schema Information
#
# Table name: booking_logs
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slot_id    :bigint           not null
#  vehicle_id :bigint           not null
#
# Indexes
#
#  index_booking_logs_on_slot_id     (slot_id)
#  index_booking_logs_on_vehicle_id  (vehicle_id)
#
# Foreign Keys
#
#  fk_rails_...  (vehicle_id => vehicles.id)
#
class BookingLog < ApplicationRecord
  belongs_to :slot
  belongs_to :vehicle
end

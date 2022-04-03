# == Schema Information
#
# Table name: booking_details
#
#  id             :bigint           not null, primary key
#  booked_at      :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  entry_point_id :bigint           not null
#  slot_id        :bigint           not null
#  vehicle_id     :bigint           not null
#
# Indexes
#
#  index_booking_details_on_entry_point_id  (entry_point_id)
#  index_booking_details_on_slot_id         (slot_id)
#  index_booking_details_on_vehicle_id      (vehicle_id)
#
# Foreign Keys
#
#  fk_rails_...  (entry_point_id => entry_points.id)
#  fk_rails_...  (slot_id => slots.id)
#  fk_rails_...  (vehicle_id => vehicles.id)
#
FactoryBot.define do
  factory :booking_detail do
    vehicle { nil }
    entry_point { nil }
    slot { nil }
    booked_at { "2022-04-04 01:09:36" }
  end
end

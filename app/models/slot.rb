# == Schema Information
#
# Table name: slots
#
#  id         :bigint           not null, primary key
#  slot       :integer
#  status     :enum
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_slots_on_slot  (slot) UNIQUE
#
class Slot < ApplicationRecord
  before_create :set_default_status
  after_create :add_location
  enum status: { vacant: 'vacant', booked: 'booked' }
  has_one :location, as: :locatable

  def set_default_status
    self.status ||= :vacant
  end

  def add_location
    Location.create(:locatable => self)
  end
end

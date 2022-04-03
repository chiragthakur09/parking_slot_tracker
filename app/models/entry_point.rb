# == Schema Information
#
# Table name: entry_points
#
#  id         :bigint           not null, primary key
#  point      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_entry_points_on_point  (point) UNIQUE
#
class EntryPoint < ApplicationRecord
  after_create :add_location
  has_one :location, as: :locatable

  def add_location
    Location.create(:locatable => self)
  end
end

# == Schema Information
#
# Table name: locations
#
#  id             :bigint           not null, primary key
#  locatable_type :string
#  location       :integer
#  position       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  locatable_id   :bigint
#
# Indexes
#
#  index_locations_on_locatable_type_and_locatable_id  (locatable_type,locatable_id)
#
class Location < ApplicationRecord
    belongs_to :locatable, polymorphic: true
    acts_as_list
end

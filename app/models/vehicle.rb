# == Schema Information
#
# Table name: vehicles
#
#  id                  :bigint           not null, primary key
#  registration_number :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_vehicles_on_registration_number  (registration_number) UNIQUE
#
class Vehicle < ApplicationRecord
    validates :registration_number, presence: true, format: { with: /\A(?<State>\D{2})\-(?<District>\d{1,2})\-(?<series>\D{1,2})-(?<number>\d{1,4})/i }
end

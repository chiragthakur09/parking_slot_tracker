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
require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

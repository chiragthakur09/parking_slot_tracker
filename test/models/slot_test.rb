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
require 'test_helper'

class SlotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

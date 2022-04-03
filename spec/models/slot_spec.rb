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
require 'rails_helper'

RSpec.describe Slot, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

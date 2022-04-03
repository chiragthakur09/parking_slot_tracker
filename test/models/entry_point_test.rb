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
require 'test_helper'

class EntryPointTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

class RemoveLocationFromSlot < ActiveRecord::Migration[6.0]
  def change
    remove_reference :slots, :location, null: false, foreign_key: true
  end
end

class RemoveLocationFromEntryPoint < ActiveRecord::Migration[6.0]
  def change
    remove_reference :entry_points, :location, null: false, foreign_key: true
  end
end

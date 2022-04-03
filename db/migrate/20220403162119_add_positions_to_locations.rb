class AddPositionsToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :position, :integer
  end
end

class RemoveLocationFromLocation < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :location, :integer
  end
end

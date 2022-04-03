class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.integer :location

      t.timestamps
    end
    add_index :locations, :location, unique: true
  end
end

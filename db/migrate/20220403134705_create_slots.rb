class CreateSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :slots do |t|
      t.integer :slot

      t.timestamps
    end
    add_index :slots, :slot, unique: true
  end
end

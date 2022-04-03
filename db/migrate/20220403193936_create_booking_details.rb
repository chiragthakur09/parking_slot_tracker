class CreateBookingDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_details do |t|
      t.references :vehicle, null: false, foreign_key: true
      t.references :entry_point, null: false, foreign_key: true
      t.references :slot, null: false, foreign_key: true
      t.datetime :booked_at

      t.timestamps
    end
  end
end

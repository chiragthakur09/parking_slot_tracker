class CreateBookingLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_logs do |t|
      t.references :slot, null: false, foreign_key: true
      t.references :vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end

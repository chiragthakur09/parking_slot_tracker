class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :registration_number

      t.timestamps
    end
    add_index :vehicles, :registration_number, unique: true
  end
end

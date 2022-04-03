class AddStatustoSlot < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      CREATE TYPE slot_status AS ENUM ('vacant', 'booked');
    SQL
    add_column :slots, :status, :slot_status
  end

  def down
    remove_column :slots, :status
    execute <<-SQL
      DROP TYPE slot_status;
    SQL
  end
end

class CreateEntryPoints < ActiveRecord::Migration[6.0]
  def change
    create_table :entry_points do |t|
      t.integer :point
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
    add_index :entry_points, :point, unique: true
  end
end

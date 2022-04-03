class AddLocatableTolocations < ActiveRecord::Migration[6.0]
  def change
    add_reference :locations, :locatable, polymorphic: true, index: true
  end
end

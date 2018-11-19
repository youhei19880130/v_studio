class ChangeRoomsCapacityNullFalse < ActiveRecord::Migration[5.0]
  def up
    change_column :rooms, :capacity, :integer, default: 0, null: false
  end

  def down
    change_column :rooms, :capacity, :integer, default: 0
  end
end

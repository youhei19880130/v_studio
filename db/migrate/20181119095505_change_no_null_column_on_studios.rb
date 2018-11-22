class ChangeNoNullColumnOnStudios < ActiveRecord::Migration[5.0]
  def up
    change_column :studios, :late_night, :boolean, default: 0, null: false
    change_column :studios, :locker_room, :boolean, default: 0, null: false
    change_column :studios, :parking, :boolean, default: 0, null: false
  end
  def down
    change_column :studios, :late_night, :boolean, default: 0
    change_column :studios, :locker_room, :boolean, default: 0
    change_column :studios, :parking, :boolean, default: 0
  end
end

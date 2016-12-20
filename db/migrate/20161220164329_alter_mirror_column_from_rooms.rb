class AlterMirrorColumnFromRooms < ActiveRecord::Migration[5.0]
  def change
    change_column :rooms, :mirror, :boolean, null: false, default: false
  end
end

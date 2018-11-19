class ChangeNoNullColumnsOnRooms < ActiveRecord::Migration[5.0]
  def up
    change_column :rooms, :price, :integer, default: 0, null: false
    change_column :rooms, :speaker, :boolean, default: 0, null: false
    change_column :rooms, :mixer, :boolean, default: 0, null: false
    change_column :rooms, :cd, :boolean, default: 0, null: false
    change_column :rooms, :md, :boolean, default: 0, null: false
    change_column :rooms, :mp3, :boolean, default: 0, null: false
    change_column :rooms, :dimmable, :boolean, default: 0, null: false
    change_column :rooms, :wifi, :boolean, default: 0, null: false
  end
  def down
    change_column :rooms, :price, :integer, default: 0
    change_column :rooms, :speaker, :boolean, default: 0
    change_column :rooms, :mixer, :boolean, default: 0
    change_column :rooms, :cd, :boolean, default: 0
    change_column :rooms, :md, :boolean, default: 0
    change_column :rooms, :mp3, :boolean, default: 0
    change_column :rooms, :dimmable, :boolean, default: 0
    change_column :rooms, :wifi, :boolean, default: 0
  end
end

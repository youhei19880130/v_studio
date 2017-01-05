class ChangeBooleanColumnFromRoom < ActiveRecord::Migration[5.0]
  def change
    change_column :rooms, :capacity, :integer, default: 0, nil: false
    change_column :rooms, :speaker, :boolean, default: 0, nil: false
    change_column :rooms, :mixer, :boolean, default: 0, nil: false
    change_column :rooms, :cd, :boolean, default: 0, nil: false
    change_column :rooms, :md, :boolean, default: 0, nil: false
    change_column :rooms, :mp3, :boolean, default: 0, nil: false
    change_column :rooms, :dimmable, :boolean, default: 0, nil: false
    change_column :rooms, :wifi, :boolean, default: 0, nil: false
  end
end

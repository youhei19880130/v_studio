# frozen_string_literal: true
class ChangeBooleanColumnFromStudio < ActiveRecord::Migration[5.0]
  def change
    change_column :studios, :late_night, :boolean, default: 0, nil: false
    change_column :studios, :locker_room, :boolean, default: 0, nil: false
    change_column :studios, :parking, :boolean, default: 0, nil: false
  end
end

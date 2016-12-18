# frozen_string_literal: true
class CreateStudios < ActiveRecord::Migration[5.0]
  def change
    create_table :studios do |t|
      t.string :name
      t.integer :account_id
      t.integer :area_id
      t.string :address
      t.string :nearest_station_1
      t.string :nearest_station_2
      t.string :nearest_staion_3
      t.string :tel
      t.time :start_hours
      t.time :end_hours
      t.boolean :late_night
      t.boolean :locker_room
      t.boolean :parking
      t.string :cancell_deadline
      t.string :image
      t.string :url
      t.text :feature
      t.text :remarks

      t.timestamps
    end
  end
end

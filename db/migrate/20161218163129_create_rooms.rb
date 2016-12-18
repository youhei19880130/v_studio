# frozen_string_literal: true
class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :studio_id
      t.string :name
      t.integer :size
      t.integer :capacity
      t.string :mirror
      t.integer :floor
      t.boolean :speaker
      t.boolean :mixer
      t.boolean :cd
      t.boolean :md
      t.boolean :mp3
      t.string :other_source
      t.boolean :dimmable
      t.boolean :wifi
      t.string :image
      t.text :feature
      t.text :remarks

      t.timestamps
    end
  end
end

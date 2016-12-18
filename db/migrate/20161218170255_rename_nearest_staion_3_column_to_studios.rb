# frozen_string_literal: true
class RenameNearestStaion3ColumnToStudios < ActiveRecord::Migration[5.0]
  def change
    rename_column :studios, :nearest_staion_3, :nearest_station_3
  end
end

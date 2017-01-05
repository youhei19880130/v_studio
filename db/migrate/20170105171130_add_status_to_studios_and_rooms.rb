# frozen_string_literal: true
class AddStatusToStudiosAndRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :studios, :status, :integer, default: 0, limit: 1, after: :remarks
    add_column :rooms,   :status, :integer, default: 0, limit: 1, after: :remarks
  end
end

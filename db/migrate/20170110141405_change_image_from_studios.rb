# frozen_string_literal: true
class ChangeImageFromStudios < ActiveRecord::Migration[5.0]
  def up
    change_column :studios, :image, :binary, limit: 10.megabyte
  end

  def down
    change_column :studios, :image, :string
  end
end

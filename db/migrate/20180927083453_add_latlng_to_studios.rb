class AddLatlngToStudios < ActiveRecord::Migration[5.0]
  def change
    add_column :studios, :latlng, :text
  end
end

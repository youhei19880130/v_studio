class RemoveImageFromStudios < ActiveRecord::Migration[5.0]
  def up
    remove_column :studios, :image
  end
  
  def down
    add_column :studios, :image, :binary
  end
end

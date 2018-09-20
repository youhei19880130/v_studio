class ChangeSlugFromStudio < ActiveRecord::Migration[5.0]
  def change
    add_index :studios, :slug, unique: true
  end
end

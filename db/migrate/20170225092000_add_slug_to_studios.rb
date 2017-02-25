class AddSlugToStudios < ActiveRecord::Migration[5.0]
  def change
    add_column :studios, :slug, :string, after: :status
  end
end

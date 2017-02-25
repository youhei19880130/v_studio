class AddMetaColumnsToStudios < ActiveRecord::Migration[5.0]
  def change
    add_column :studios, :meta_ogp_image_url, :string, after: :status
    add_column :studios, :meta_description, :string, after: :status
    add_column :studios, :meta_title, :string, after: :status
  end
end

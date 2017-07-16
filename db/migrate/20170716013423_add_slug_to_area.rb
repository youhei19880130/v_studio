class AddSlugToArea < ActiveRecord::Migration[5.0]
  def change
    add_column :areas, :slug, :string, after: :city
  end
end

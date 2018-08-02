class CreateStudioImages < ActiveRecord::Migration[5.0]
  def change
    create_table :studio_images do |t|
      t.references :studio, null: false, index: true
      t.string :url

      t.timestamps
    end
  end
end

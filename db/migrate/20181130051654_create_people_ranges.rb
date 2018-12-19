class CreatePeopleRanges < ActiveRecord::Migration[5.0]
  def up
    create_table :people_ranges do |t|
      t.string :name, null: false
      t.integer :min, null: false
      t.integer :max, null: false

      t.timestamps
    end
  end

  def down
  end
end

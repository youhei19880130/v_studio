class DropTableStations < ActiveRecord::Migration[5.0]
  def up
    drop_table :stations
  end

  def down
    create_table :stations do |t|
      t.string :name

      t.timestamps
    end
  end
end

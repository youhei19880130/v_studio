class AddPriceToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :price, :integer, after: :capacity, default: 0, nil: false
  end
end

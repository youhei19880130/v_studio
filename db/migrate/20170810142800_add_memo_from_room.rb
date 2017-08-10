class AddMemoFromRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :memo, :text, after: :remarks
  end
end

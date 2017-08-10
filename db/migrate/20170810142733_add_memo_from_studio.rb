class AddMemoFromStudio < ActiveRecord::Migration[5.0]
  def change
    add_column :studios, :memo, :text, after: :remarks
  end
end

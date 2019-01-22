class RemoveAccountIdFromStudios < ActiveRecord::Migration[5.0]
  def change
    remove_column :studios, :account_id, :integer
  end
end

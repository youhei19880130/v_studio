class DropTableAccounts < ActiveRecord::Migration[5.0]
  def up
    drop_table :accounts
  end

  def down
    create_table :accounts do |t|
      t.string :name
      t.string :email
      t.string :tel

      t.timestamps
    end
  end
end

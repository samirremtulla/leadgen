class AddAccountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :balance, :integer, :default =>10
  end
end

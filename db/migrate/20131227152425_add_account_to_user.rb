class AddAccountToUser < ActiveRecord::Migration
  def change
  	add_column :users, :account, :string
  	 add_index :users, :account,                :unique => true
  end

end

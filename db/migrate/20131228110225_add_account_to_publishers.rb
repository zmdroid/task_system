class AddAccountToPublishers < ActiveRecord::Migration
  def change
	add_column :publishers, :account , :string
	add_column :publishers, :company_name , :string
	add_column :publishers, :company_address, :string
	add_column :publishers, :company_mobild, :string
	add_column :publishers, :human, :string
	add_column :publishers, :human_telphone, :string
	
	add_index :publishers, :account, :unique=>true
  end
end

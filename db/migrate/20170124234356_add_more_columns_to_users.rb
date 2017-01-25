class AddMoreColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :gym, :string
  end
end

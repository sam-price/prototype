class AddAdditionalToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :bio, :text
    add_column :users, :gender, :string
    add_column :users, :exercise_frequency, :string
    add_column :users, :exercise_tod, :string
    add_column :users, :exercise_type, :string
    add_column :users, :public, :boolean
    add_column :users, :setup, :boolean
  end
end

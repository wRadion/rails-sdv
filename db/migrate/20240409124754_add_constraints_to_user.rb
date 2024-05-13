class AddConstraintsToUser < ActiveRecord::Migration[7.1]
  def change
    User.destroy_all
    change_column :users, :name, :string, null: false, limit: 16
    change_column :users, :password, :string, null: false, limit: 64
    change_column :users, :email, :string, null: false
    add_index :users, :email, unique: true
  end
end

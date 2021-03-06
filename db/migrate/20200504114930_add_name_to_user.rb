class AddNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, null: false, default: ""
    add_column :users, :sign_in_count, :integer, default: 0, null: false
    add_column :users, :current_sign_in_at, :datetime
    add_column :users, :last_sign_in_at, :datetime
    add_column :users, :current_sign_in_ip, :datetime
    add_column :users, :last_sign_in_ip, :datetime
  end
end

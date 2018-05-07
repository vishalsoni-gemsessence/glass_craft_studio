class AddFullNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_users, :full_name, :string
  end
end

class AddEmailLanguagePreferenceForOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_orders, :email_language_preference, :string
  end
end

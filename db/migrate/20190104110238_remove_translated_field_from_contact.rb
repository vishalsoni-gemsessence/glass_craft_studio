class RemoveTranslatedFieldFromContact < ActiveRecord::Migration[5.1]
  def change
  	remove_column :spree_contacts, :name
    remove_column :spree_contacts, :subject
    remove_column :spree_contacts, :message
    remove_column :spree_contacts, :slug
  end
end

class AddNameToSpreeStickers < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_stickers, :name, :string
    add_column :spree_templates, :name, :string
    add_column :spree_templates, :description, :string
  end
end

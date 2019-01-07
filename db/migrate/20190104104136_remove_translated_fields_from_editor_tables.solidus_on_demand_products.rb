# This migration comes from solidus_on_demand_products (originally 20181231091532)
class RemoveTranslatedFieldsFromEditorTables < ActiveRecord::Migration[5.1]
  def change
    #removed translated columns from template
    remove_column :spree_templates, :name
    remove_column :spree_templates, :description
    remove_column :spree_templates, :slug

    #removed translated columns from filter
    remove_column :spree_filters, :name
    remove_column :spree_filters, :slug

    #removed translated columns from sticker
    remove_column :spree_stickers, :name
    remove_column :spree_stickers, :slug
  end
end

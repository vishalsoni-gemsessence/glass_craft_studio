# This migration comes from solidus_on_demand_products (originally 20180808112930)
class ChangeLayerIdTypeOfProduct < ActiveRecord::Migration[5.1]
  def self.up
    remove_column :spree_product_texts, :text_layer_id
    remove_column :spree_product_stickers, :sticker_layer_id
    add_column :spree_product_texts, :text_layer, :string
    add_column :spree_product_stickers, :sticker_layer, :string
  end
  
  def self.down
    remove_column :spree_product_texts, :text_layer, :string
    remove_column :spree_product_stickers, :sticker_layer, :string
  end
end

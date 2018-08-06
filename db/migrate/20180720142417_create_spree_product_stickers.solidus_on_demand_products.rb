# This migration comes from solidus_on_demand_products (originally 20180710094908)
class CreateSpreeProductStickers < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_product_stickers do |t|
      t.integer :product_id
      t.integer :sticker_layer_id
      t.integer :rotate
      t.decimal :opacity, precision: 5, scale: 2
      t.integer :position_x
      t.integer :position_y
      t.integer :sticker_id
      t.timestamps
    end
  end
end

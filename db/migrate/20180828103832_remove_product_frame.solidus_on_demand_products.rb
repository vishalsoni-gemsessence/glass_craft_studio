# This migration comes from solidus_on_demand_products (originally 20180823144049)
class RemoveProductFrame < ActiveRecord::Migration[5.1]
  def change
    remove_attachment :spree_product_backgrounds, :product_frame
    add_column :spree_product_backgrounds, :product_frame_id, :integer
  end
end

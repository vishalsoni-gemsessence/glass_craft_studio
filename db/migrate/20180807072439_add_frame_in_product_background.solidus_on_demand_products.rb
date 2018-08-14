# This migration comes from solidus_on_demand_products (originally 20180807064748)
class AddFrameInProductBackground < ActiveRecord::Migration[5.1]
  def change
    add_attachment :spree_product_backgrounds, :product_frame
  end
end

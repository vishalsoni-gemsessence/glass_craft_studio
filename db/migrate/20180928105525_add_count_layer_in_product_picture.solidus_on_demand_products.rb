# This migration comes from solidus_on_demand_products (originally 20180928105254)
class AddCountLayerInProductPicture < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_product_pictures, :product_picture_layer, :string
  end
end

# This migration comes from solidus_on_demand_products (originally 20180830080358)
class AddWishlistPhotosFieldInProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_products, :wishlist_photos, :boolean
  end
end

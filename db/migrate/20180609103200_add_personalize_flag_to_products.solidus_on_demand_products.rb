# This migration comes from solidus_on_demand_products (originally 20180609085024)
class AddPersonalizeFlagToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_products, :is_personalize_product, :boolean, default: false
    add_column :spree_products, :personalize_by_id, :integer
  end
end

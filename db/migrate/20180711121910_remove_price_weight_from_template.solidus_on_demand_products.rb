# This migration comes from solidus_on_demand_products (originally 20180711100151)
class RemovePriceWeightFromTemplate < ActiveRecord::Migration[5.1]
  def change
  	remove_column :spree_templates, :price
  	remove_column :spree_templates, :weight
  end
end

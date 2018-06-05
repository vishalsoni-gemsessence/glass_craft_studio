# This migration comes from solidus_on_demand_products (originally 20180530105629)
class AddTemplateToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_products, :template_id, :integer
  end
end

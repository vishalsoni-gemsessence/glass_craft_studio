# This migration comes from solidus_on_demand_products (originally 20180719111038)
class RemoveScaleFromTemplate < ActiveRecord::Migration[5.1]
  def change
    remove_column :spree_templates, :scale
  end
end

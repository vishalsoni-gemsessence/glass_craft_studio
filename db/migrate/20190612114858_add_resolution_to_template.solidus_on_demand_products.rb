# This migration comes from solidus_on_demand_products (originally 20190612338176)
class AddResolutionToTemplate < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_templates, :resolution, :integer
  end
end

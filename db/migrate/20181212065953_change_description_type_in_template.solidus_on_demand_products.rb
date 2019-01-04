# This migration comes from solidus_on_demand_products (originally 20181212065815)
class ChangeDescriptionTypeInTemplate < ActiveRecord::Migration[5.1]
  def up
    change_column :spree_templates, :description, :text
  end

  def down
    change_column :spree_templates, :description, :text
  end
end

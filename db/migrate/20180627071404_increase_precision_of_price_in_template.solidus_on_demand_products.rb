# This migration comes from solidus_on_demand_products (originally 20180627071037)
class IncreasePrecisionOfPriceInTemplate < ActiveRecord::Migration[5.1]
  def up
    change_column :spree_templates, :price, :decimal, precision: 10, scale: 2
  end
  def down
    change_column :spree_templates, :price, :decimal, precision: 10, scale: 2
  end
end


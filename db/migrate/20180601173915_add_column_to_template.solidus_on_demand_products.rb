# This migration comes from solidus_on_demand_products (originally 20180521134123)
class AddColumnToTemplate < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_templates, :number_of_images, :integer
    add_column :spree_templates, :weight, :string
    add_column :spree_templates, :price, :decimal, precision: 5, scale: 2
  end
end

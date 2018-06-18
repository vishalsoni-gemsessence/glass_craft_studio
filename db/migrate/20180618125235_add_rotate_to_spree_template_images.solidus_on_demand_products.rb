# This migration comes from solidus_on_demand_products (originally 20180608054522)
class AddRotateToSpreeTemplateImages < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_template_images, :rotate, :decimal
  end
end

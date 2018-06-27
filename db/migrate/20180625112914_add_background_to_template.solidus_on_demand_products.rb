# This migration comes from solidus_on_demand_products (originally 20180625105615)
class AddBackgroundToTemplate < ActiveRecord::Migration[5.1]
  def change
    add_attachment :spree_templates, :background_image
    add_column :spree_templates, :background_color, :string
  end
end

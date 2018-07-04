# This migration comes from solidus_on_demand_products (originally 20180703072348)
class AddFrameToTemplate < ActiveRecord::Migration[5.1]
  def change
    add_attachment :spree_templates, :frame
  end
end

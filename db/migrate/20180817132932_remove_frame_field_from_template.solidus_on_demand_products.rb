# This migration comes from solidus_on_demand_products (originally 20180817132830)
class RemoveFrameFieldFromTemplate < ActiveRecord::Migration[5.1]
  def change
    remove_attachment :spree_templates, :frame
  end
end

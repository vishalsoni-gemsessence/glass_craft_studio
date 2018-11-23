# This migration comes from solidus_on_demand_products (originally 20181123111952)
class AddDeletedAtInTemplateFrame < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_template_frames, :deleted_at, :datetime
  end
end

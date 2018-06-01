# This migration comes from solidus_on_demand_products (originally 20180522102106)
class CreateSpreeTemplateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_template_images do |t|
      t.decimal :img_width
      t.decimal :img_height
      t.decimal :position_x
      t.decimal :position_y
      t.decimal :border_radius
      t.integer :template_id
      t.timestamps
    end
  end
end

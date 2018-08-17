# This migration comes from solidus_on_demand_products (originally 20180814115016)
class CreateSpreeTemplateFrames < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_template_frames do |t|
      t.integer :template_id
      t.attachment :frame_image
      t.timestamps
    end
  end
end

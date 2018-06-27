# This migration comes from solidus_on_demand_products (originally 20180620150944)
class CreateSpreeTemplateTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_template_texts do |t|
      t.integer :font_size
      t.integer :position_x
      t.integer :position_y
      t.string :font_color
      t.decimal :width
      t.decimal :height
      t.decimal :rotate
      t.string :font_family
      t.integer :template_id
      t.timestamps
    end
  end
end

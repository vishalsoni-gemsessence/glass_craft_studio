# This migration comes from solidus_on_demand_products (originally 20180704093422)
class CreateSpreeProductTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_product_texts do |t|
      t.integer :product_id
      t.integer :text_layer_id
      t.string :text_content
      t.decimal :rotate
      t.integer :line_height
      t.integer :font_size
      t.string :font_family
      t.decimal :opacity, precision: 5, scale: 2
      t.string :alignment
      t.string :style
      t.string :font_color
      t.timestamps
    end
  end
end

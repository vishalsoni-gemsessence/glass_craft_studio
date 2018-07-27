# This migration comes from solidus_on_demand_products (originally 20180725142201)
class CreateSpreeProductBackgrounds < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_product_backgrounds do |t|
      t.integer :product_id
    	t.attachment :background_image
    	t.string :background_color
      t.integer :background_width
      t.integer :background_height
      t.timestamps
    end
  end
end

# This migration comes from solidus_on_demand_products (originally 20180628131954)
class CreateSpreeProductPictures < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_product_pictures do |t|
      t.integer :product_id
      t.string :custom_width
      t.decimal :opacity, precision: 5, scale: 2
      t.attachment :product_image
      t.integer :product_width
      t.integer :product_height
      t.timestamps
    end
  end
end

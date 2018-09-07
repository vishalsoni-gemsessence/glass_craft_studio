# This migration comes from solidus_on_demand_products (originally 20180903071814)
class CreateSpreeGalleryUploadedImages < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_gallery_uploaded_images do |t|
      t.integer :product_id
      t.integer :uploaded_photo_id
      t.integer :variant_id
      t.integer :user_id
      t.integer :quantity
      t.timestamps
    end
  end
end

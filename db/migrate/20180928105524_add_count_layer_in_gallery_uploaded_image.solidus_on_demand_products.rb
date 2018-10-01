# This migration comes from solidus_on_demand_products (originally 20180928103912)
class AddCountLayerInGalleryUploadedImage < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_gallery_uploaded_images, :gallery_image_layer, :string
  end
end

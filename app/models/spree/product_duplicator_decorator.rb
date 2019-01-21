Spree::ProductDuplicator.class_eval do
    protected

    def duplicate_product
      product.dup.tap do |new_product|
        new_product.name = "COPY OF #{product.name}"
        new_product.slug = product.slug + "-#{Time.now.to_i}"
        new_product.taxons = product.taxons
        new_product.created_at = nil
        new_product.deleted_at = nil
        new_product.updated_at = nil
        new_product.product_properties = reset_properties
        new_product.master = duplicate_master
        new_product.variants = product.variants.map { |variant| duplicate_variant variant }
      end
    end

    def duplicate_master
      master = product.master
      master.dup.tap do |new_master|
        new_master.sku = "COPY OF #{master.sku} #{Time.now.to_i}"
        new_master.deleted_at = nil
        new_master.images = master.images.map { |image| duplicate_image image } if @include_images
        new_master.price = master.price
      end
    end
end
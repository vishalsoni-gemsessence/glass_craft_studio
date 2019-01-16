Spree::ProductDuplicator.class_eval do
    protected

    def duplicate_product
      product.dup.tap do |new_product|
        new_product.name = "COPY OF #{product.name}"
        new_product.slug = new_product.slug + "-#{Time.now.to_i}"
        new_product.taxons = product.taxons
        new_product.created_at = nil
        new_product.deleted_at = nil
        new_product.updated_at = nil
        new_product.product_properties = reset_properties
        new_product.master = duplicate_master
        new_product.variants = product.variants.map { |variant| duplicate_variant variant }
      end
    end
end
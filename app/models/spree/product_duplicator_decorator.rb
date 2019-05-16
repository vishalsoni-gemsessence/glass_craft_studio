Spree::ProductDuplicator.class_eval do
            
  protected

  def duplicate_product
    product.dup.tap do |new_product|
      I18n.available_locales.each do |locale|
        I18n.with_locale(locale) {
          new_product.name = "#{I18n.t('spree.copy_of')} #{product.name}"
          new_product.slug = product.slug + "-#{Time.now.to_i}"  
        }
      end
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
      new_master.sku = "#{I18n.t('spree.copy_of')} #{master.sku} #{Time.now.to_i}"
      new_master.deleted_at = nil
      new_master.images = master.images.map { |image| duplicate_image image } if @include_images
      new_master.price = master.price
    end
  end
end
Spree::Product.class_eval do
  scope :not_personalize_product, -> { where(is_personalize_product: false) }

  add_search_scope :parent_taxon_product do |taxon|
    includes(:classifications).
    where("spree_products_taxons.taxon_id" => taxon.id).
    order(Spree::Classification.arel_table[:position].asc)
  end
  
  add_search_scope :not_personalized do
    where("#{Spree::Product.quoted_table_name}.is_personalize_product = 0")
  end
  
  def display_product_name
    splitted_names = name.split(' ')
    final_name = ''
    temp_name = ''
    splitted_names.each do |token|
      temp_name << "#{token} "
      puts "temp_name ===> #{temp_name} | final_name ====> #{final_name}"
      if temp_name.length > 31
        final_name = "#{final_name.strip}<br>#{token} "
        temp_name = "#{token} "
      else
        final_name << "#{token} "
      end
    end
    return final_name.strip
  end

  def self.to_csv
    CSV.generate do |csv|
      csv << [
        'ID', 
        'Name', 
        'Slug', 
        'Master Price',
        'Cost Price',
        'Available On',
        'Promotionable',
        'SKU',
        'Product Dimension',
        'Shipping Category',
        'Tax Category',
        'Taxons', 
        'Option Types',
        'Meta Title', 
        'Meta Keywords',
        'Meta Description',
        'Product Properties',
        'Created At',
        'Updated At'].flatten
      all.each do |product|
        csv << [product.id, 
          product.try(:name),
          product.slug,
          product.master.try(:price),
          product.try(:cost_price),
          product.try(:available_on), 
          product.try(:promotionable),
          product.sku,
          product.get_product_dimension,
          product.shipping_category.try(:name),
          product.tax_category.try(:name),
          product.get_taxons_name,
          product.get_option_types,
          product.meta_title,
          product.try(:meta_keywords),
          product.meta_description,
          product.get_product_properties,
          product.created_at, 
          product.updated_at
          ].flatten
      end
    end
  end

  def get_product_dimension
    "#{height} x #{width}"
  end

  def get_product_properties
    properties = product_properties.map do |p| 
      "#{p.property.name} : #{p.value}"
    end
    properties.map(&:inspect).join(', ')
  end

  def get_taxons_name
    taxons.map{|taxon| taxon.taxonomy.name}.map(&:inspect).join(',')
  end

  def get_option_types
    option_types.map{|a| a.name}.map(&:inspect).join(',')
  end
end



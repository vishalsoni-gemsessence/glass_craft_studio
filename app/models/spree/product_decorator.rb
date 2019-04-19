Spree::Product.class_eval do
  scope :not_personalize_product, -> { where(is_personalize_product: false) }

  add_search_scope :parent_taxon_product do |taxon|
    includes(:classifications).
    where("spree_products_taxons.taxon_id" => taxon.id).
    order(Spree::Classification.arel_table[:position].asc)
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
      csv << ['ID', 'Name', 'Description', 'Slug', 'Price', 'Available On', 'Meta Keywords', 'Tax Category Id', 'Shipping Category Id', 'Promotionable', 'Created At', 'Updated At'].flatten
      all.each do |item|
        csv << [item.id, 
                item.try(:name), 
                item.try(:description).try(:html_safe), 
                item.slug, 
                item.try(:price), 
                item.try(:available_on), 
                item.try(:meta_keywords), 
                item.try(:tax_category_id), 
                item.try(:shipping_category_id), 
                item.try(:promotionable), 
                item.created_at, 
                item.updated_at].flatten
      end
    end
  end
end

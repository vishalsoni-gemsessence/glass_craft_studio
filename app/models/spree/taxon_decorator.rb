Spree::Taxon.class_eval do

  paginates_per 9
  
  has_attached_file :icon,
    styles: { mini: '32x32>', normal: '377x247' },
    default_style: :mini,
    url: '/spree/taxons/:id/:style/:basename.:extension',
    path: ':rails_root/public/spree/taxons/:id/:style/:basename.:extension',
    default_url: '/assets/default_taxon.png',
    convert_options: { all: '-strip -auto-orient -colorspace sRGB' }

  def active_products
    products.not_personalized.not_deleted.available
  end
  
  def all_products
    scope = Product.joins(:taxons)
    scope.where( spree_taxons { id: self_and_descendents.select(:id) } )
    scope.not_personalized
  end
  
end
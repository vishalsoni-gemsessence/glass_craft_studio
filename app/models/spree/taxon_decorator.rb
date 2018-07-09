Spree::Taxon.class_eval do

  has_attached_file :icon,
    styles: { mini: '32x32>', normal: '377x247' },
    default_style: :mini,
    url: '/spree/taxons/:id/:style/:basename.:extension',
    path: ':rails_root/public/spree/taxons/:id/:style/:basename.:extension',
    default_url: '/assets/default_taxon.png',
    convert_options: { all: '-strip -auto-orient -colorspace sRGB' }

end
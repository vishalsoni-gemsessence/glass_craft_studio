Spree::Product.class_eval do
  scope :not_personalize_product, -> { where(is_personalize_product: false) }

  add_search_scope :parent_taxon_product do |taxon|
    includes(:classifications).
    where("spree_products_taxons.taxon_id" => taxon.id).
    order(Spree::Classification.arel_table[:position].asc)
  end
end
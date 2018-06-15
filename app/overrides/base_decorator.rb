Spree::Core::Search::Base.class_eval do
  
  protected
    def get_base_scope
      base_scope = Spree::Product.display_includes.available
      base_scope = base_scope.parent_taxon_product(@properties[:taxon]) unless @properties[:taxon].blank?
      base_scope = get_products_conditions_for(base_scope, @properties[:keywords])
      base_scope = add_search_scopes(base_scope)
      base_scope = add_eagerload_scopes(base_scope)
      base_scope.not_personalize_product
    end
end
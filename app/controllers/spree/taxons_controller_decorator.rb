module Spree
  TaxonsController.class_eval do
    helper 'spree/products'

    respond_to :html

    def show
      @taxon = Spree::Taxon.find_by!(permalink: params[:id])
      return unless @taxon

      @searcher = build_searcher(params.merge(taxon: @taxon.id, include_images: true))
      @products = @searcher.retrieve_products

      # Use for Glass Photo Print
      @childrens = @taxon.children.page(params[:page]).per(params[:per_page])

      # Use for Filter in Photo Gallery page
      if params[:selected_taxon].present? && !params[:selected_taxon].blank?
        @taxon_products = []
        params[:selected_taxon].each do |selected_taxon|
          taxon_childrens = @taxon.children.find_by(name: selected_taxon)
          @taxon_products.push(taxon_childrens.products)
        end
        @taxon_products = Kaminari.paginate_array(@taxon_products.flatten).page(params[:page]).per(params[:per_page])
      else
        @taxon_products = @taxon.products.page(params[:page]).per(params[:per_page])
      end
    end
  end
end

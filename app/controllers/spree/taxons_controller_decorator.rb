module Spree
  TaxonsController.class_eval do
    helper 'spree/products'

    respond_to :html

    def show
      @taxon = Spree::Taxon.find_by!(permalink: params[:id])
      return unless @taxon

      @searcher = build_searcher(params.merge(taxon: @taxon.id, include_images: true))
      @products = @searcher.retrieve_products

      @childrens = @taxon.children.page(params[:page]).per(params[:per_page])
    end
  end
end
module Spree
  module Admin
    class ProductsController < ResourceController
      
      def index
        session[:return_to] = request.url
        respond_to do |format|
          format.html
          format.csv { send_data @collection.except(:limit, :offset).to_csv, filename: "products-#{DateTime.now}.csv" }
        end
      end
    end
  end
end

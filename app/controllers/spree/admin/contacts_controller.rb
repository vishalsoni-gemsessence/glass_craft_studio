module Spree
  module Admin
    class ContactsController < ResourceController
      def index
        session[:return_to] = request.url
        respond_with(@collection)
      end

      def show
        redirect_to action: :edit
      end

      private
        def find_resource
          @contact = Spree::Contact.with_deleted.friendly.find(params[:id])
        end

        def collection
          return @collection if @collection
          params[:q] ||= {}
          params[:q][:s] ||= "name asc"
          # @search needs to be defined as this is passed to search_form_for
          @search = super.ransack(params[:q])
          @collection = @search.result.
                order(id: :asc).
                page(params[:page]).per(params[:per_page])
        end
    end
  end
end

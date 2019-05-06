Spree::OrdersController.class_eval do
  before_action :delete_personalize_product, only: :update
    def update
      if @order.contents.update_cart(order_params)
        @order.next if params.key?(:checkout) && @order.cart?

        respond_with(@order) do |format|
          format.html do
            if params.key?(:checkout)
                redirect_to checkout_state_path(@order.checkout_steps.first)
            else
                redirect_to cart_path
            end
          end
          format.js do
          end
        end
      else
        respond_with(@order)
      end
    end

  private
    def delete_personalize_product
      line_attributes = params[:order][:line_items_attributes]
      line_attributes.each do |key, value|
        if value[:quantity] == "0"
          line_item = Spree::LineItem.find value[:id].to_i
          if line_item.present?
            product = line_item.variant.product
            product.destroy if product.is_personalize_product?
          end
        end
      end
    end
end

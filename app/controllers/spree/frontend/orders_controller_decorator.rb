Spree::OrdersController.class_eval do

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
end
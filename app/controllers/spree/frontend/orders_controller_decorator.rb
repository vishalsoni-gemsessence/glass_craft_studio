Spree::OrdersController.class_eval do
  # before_action :assign_order, only: [:update, :remove_adjustments]
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

    def remove_adjustments
      @order = Spree::Order.find_by!(number: params[:id])
      adjustments = @order.adjustments.eligible
      adjustments.each do |adjustment|
        if adjustment.promotion_code.present?
          @order.coupon_code = adjustment.promotion_code.value
          @handler = Spree::PromotionHandler::Coupon.new(@order).remove
        end
      end

      respond_with(@order) do |format|
        format.html do
          redirect_to cart_path
        end
        format.js do
        end
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

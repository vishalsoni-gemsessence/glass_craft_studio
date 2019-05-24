Spree::PromotionHandler::Coupon.class_eval do
  
  def remove
    if promotion.blank?
      set_error_code :coupon_code_not_found
    elsif !promotion_exists_on_order?(order, promotion)
      set_error_code :coupon_code_not_present
    else
      promotion.remove_from(order)
      order.recalculate
      set_success_code :coupon_code_removed
    end

    self    
  end
  
end
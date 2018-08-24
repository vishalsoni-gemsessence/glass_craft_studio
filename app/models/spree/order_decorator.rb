Spree::Order.class_eval do

  def has_personalized_product
    line_items.each do |item|
      if item.product.is_personalize_product
        return true
      end
    end
    
    return false
  end
  
  def deliver_order_confirmation_email
    Spree::OrderMailer.confirm_email(self).deliver_later
    update_column(:confirmation_delivered, true)
    Spree::OrderMailer.confirm_email_to_staffs(self).deliver_later
  end
    
end
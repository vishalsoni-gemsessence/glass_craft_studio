Spree::Order.class_eval do

   def finalize!
    # lock all adjustments (coupon promotions, etc.)
    all_adjustments.each(&:finalize!)

    # update payment and shipment(s) states, and save
    updater.update_payment_state
    shipments.each do |shipment|
      shipment.update_state
      shipment.finalize!
    end

    updater.update_shipment_state
    self.email_language_preference = I18n.locale
    save!
    updater.run_hooks

    touch :completed_at

    deliver_order_confirmation_email unless confirmation_delivered?
  end

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
    Spree::OrderMailer.confirm_email_to_staffs(self).deliver_later
    update_column(:confirmation_delivered, true)
  end
end
module Spree
  CheckoutController.class_eval do
    private
    def set_successful_flash_notice
      flash.notice = t('spree.order_processed_successfully')
    end
  end
end
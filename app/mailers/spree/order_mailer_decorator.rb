Spree::OrderMailer.class_eval do

  def confirm_email_to_staffs(order)
    @order = order
    @store = @order.store
    subject = build_subject(t('.subject'), false)
    to_address = Rails.application.secrets.mailer[:order_confirm][:staff]
    
    mail(to: to_address, from: from_address(@store), subject: subject)    
  end

  def cancel_email(order, resend = false)
    @order = order
    @store = @order.store
    subject = build_subject(t('.subject'), resend)

    mail(to: @order.email, from: from_address(@store), subject: subject)
  end

  def inventory_cancellation_email(order, inventory_units, resend = false)
    @order, @inventory_units = order, inventory_units
    @store = @order.store
    subject = build_subject(t('spree.order_mailer.inventory_cancellation_email.subject'), resend)

    mail(to: @order.email, from: from_address(@store), subject: subject)
  end

  private

  def build_subject(subject_text, resend)
    resend_text = (resend ? "[#{t('spree.resend').upcase}] " : '')
    "#{resend_text} #{t('.your')} #{@order.store.name} #{subject_text} ##{@order.number}"
  end
  
end
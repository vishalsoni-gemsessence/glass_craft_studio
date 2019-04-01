Spree::OrderMailer.class_eval do

  def confirm_email(order, resend = false)
    @order = order
    @store = @order.store
    @customer_name = @order.user.full_name.present?? @order.user.full_name || I18n.t('spree.order_mailer.confirm_email.customer_name')
    
    current_locale = I18n.locale
    set_locale_for_order_email(@order)

    subject = build_subject(t('.subject'), resend)
    mail(to: @order.email, from: from_address(@store), subject: subject)

    I18n.locale = current_locale
    
    headers['sender'] = nil
    headers['sender'] = @store.mail_from_address
  end

  def confirm_email_to_staffs(order)
    @order = order
    @store = @order.store

    current_locale = I18n.locale
    set_locale_for_order_email(@order)

    subject = build_subject(t('.subject'), false)
    to_address = Rails.application.secrets.mailer[:order_confirm][:staff]
    
    mail(to: to_address, from: from_address(@store), subject: subject)

    I18n.locale = current_locale

    headers['sender'] = nil
    headers['sender'] = @store.mail_from_address
  end

  def cancel_email(order, resend = false)
    @order = order
    @customer_name = @order.user.full_name.present?? @order.user.full_name || I18n.t('spree.order_mailer.confirm_email.customer_name')

    #received email language will be same for the same order
    current_locale = I18n.locale
    set_locale_for_order_email(@order)

    @store = @order.store
    subject = build_subject(t('.subject'), resend)

    mail(to: @order.email, from: from_address(@store), subject: subject)

    I18n.locale = current_locale

    headers['sender'] = nil
    headers['sender'] = @store.mail_from_address
  end

  def inventory_cancellation_email(order, inventory_units, resend = false)
    @order, @inventory_units = order, inventory_units
    @store = @order.store
    @customer_name = @order.user.full_name.present?? @order.user.full_name || I18n.t('spree.order_mailer.confirm_email.customer_name')

    current_locale = I18n.locale
    set_locale_for_order_email(@order)

    subject = build_subject(t('spree.order_mailer.inventory_cancellation_email.subject'), resend)

    mail(to: @order.email, from: from_address(@store), subject: subject)

    I18n.locale = current_locale

    headers['sender'] = nil
    headers['sender'] = @store.mail_from_address
  end

  private

  def build_subject(subject_text, resend)
    resend_text = (resend ? "[#{t('spree.resend').upcase}] " : '')
    "#{resend_text} #{t('.your')} #{@order.store.name} #{subject_text} ##{@order.number}"
  end

  def set_locale_for_order_email(order)
    return unless order.email_language_preference?
    I18n.locale = order.email_language_preference
  end
end
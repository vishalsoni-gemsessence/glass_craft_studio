Spree::CartonMailer.class_eval do
  
  def shipped_email(options, _deprecated_options = {})
    @order = options.fetch(:order)
    @customer_name = @order.user.full_name.present?? @order.user.full_name : I18n.t('spree.carton_mailer.shipped_email.customer_name')
    @carton = options.fetch(:carton)
    @manifest = @carton.manifest_for_order(@order)
    options = { resend: false }.merge(options)
    @store = @order.store
    subject = (options[:resend] ? "[#{t('spree.resend').upcase}] " : '')
    subject += "#{t('spree.order_mailer.your')} #{@store.name} #{t('spree.carton_mailer.shipped_email.subject')} ##{@order.number}"

    bcc_address = Rails.application.secrets.mailer[:shipped_email][:staff]
    
    mail(to: @order.email, from: from_address(@store), subject: subject)

    I18n.locale = @order.email_language_preference.present?? @order.email_language_preference : "en"
    
    headers['sender'] = nil
    headers['sender'] = @store.mail_from_address    
  end
  
end
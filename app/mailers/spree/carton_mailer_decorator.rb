Spree::CartonMailer.class_eval do
  
  def shipped_email(options, _deprecated_options = {})
    @order = options.fetch(:order)
    @carton = options.fetch(:carton)
    @manifest = @carton.manifest_for_order(@order)
    options = { resend: false }.merge(options)
    @store = @order.store
    subject = (options[:resend] ? "[#{t('spree.resend').upcase}] " : '')
    subject += "#{t('spree.order_mailer.your')} #{@store.name} #{t('spree.carton_mailer.shipped_email.subject')} ##{@order.number}"

    bcc_address = Rails.application.secrets.mailer[:shipped_email][:staff]
    
    mail(to: @order.email, from: from_address(@store), subject: subject)
  end
  
end
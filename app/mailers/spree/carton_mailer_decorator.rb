Spree::CartonMailer.class_eval do
  def shipped_email(options, _deprecated_options = {})
    @order = options.fetch(:order)
    @carton = options.fetch(:carton)
    @manifest = @carton.manifest_for_order(@order)
    options = { resend: false }.merge(options)
    @store = @order.store

    subject = (options[:resend] ? "[#{t('spree.resend').upcase}] " : '')
    subject += "#{t('spree.order_mailer.your')} #{@store.name} #{t('spree.shipment_mailer.shipped_email.subject')} ##{@order.number}"

    bcc_emails = []
    
    if @order.ship_address.country.iso == "HK"
      bcc_emails << "delivery-hong-kong@glassxpertndesign.com"
    else
      bcc_emails << "delivery-international@glassxpertndesign.com"
    end
    mail(to: @order.email, from: from_address(@store), subject: subject)
  end
  
end
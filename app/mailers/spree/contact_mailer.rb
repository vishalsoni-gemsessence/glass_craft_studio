module Spree
  class ContactMailer < BaseMailer    
    default from: Rails.application.secrets.mailer[:contacts][:from]
    
    def notify_email(contact)
      @contact = contact
      mail( to: @contact.contact_us_email.email, 
            from: store_from_address, 
            subject: email_subject(contact))
    end
    
    def acknowledge_email(contact)
      @contact = contact
      mail( to: @contact.email, 
            from: store_from_address, 
            subject: email_subject(contact))      
    end
    
    private 
    
    def email_subject(contact)
      if contact.contact_us_email.slug == 'customer-services-and-feedbacks'
        return I18n.t('spree.contact_mailer.acknowledge_email.customer_services_and_feedbacks_title')
      elsif contact.contact_us_email.slug == 'customized-glass-gifts'  
        return I18n.t('spree.contact_mailer.acknowledge_email.customized_glass_gifts_title')
      elsif contact.contact_us_email.slug == 'glass-photo-prints'
        return I18n.t('spree.contact_mailer.acknowledge_email.glass_photo_prints_title')
      elsif contact.contact_us_email.slug == 'glass-for-interior-design'
        return I18n.t('spree.contact_mailer.acknowledge_email.glass_for_interior_design_title')
      elsif contact.contact_us_email.slug == 'business-partnership'
        return I18n.t('spree.contact_mailer.acknowledge_email.business_partnership_title')
      else
        return I18n.t('spree.contact_mailer.acknowledge_email.customer_services_and_feedbacks_title')
      end      
    end
    
    def store_from_address
      # assumption: only 1 store in DB
      store = Spree::Store.first
      store.mail_from_address
    end
  end
end
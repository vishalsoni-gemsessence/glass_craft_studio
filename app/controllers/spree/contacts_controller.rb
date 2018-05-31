module Spree
  class ContactsController < Spree::StoreController
    def create
      @contact_us = Spree::Contact.new(contact_us_params)

      if @contact_us.save
        flash[:success] = Spree.t('contact_us_success_message')
        redirect_to spree.root_path
      else
        flash[:error] = Spree.t('contact_us_error_message')
        render :'spree/home/index'
      end
    end

    private
      def permitted_review_attributes
        [:contact_us_email_id, :name, :email, :subject, :message]
      end

      def contact_us_params
        params.require(:contact).permit(permitted_review_attributes)
      end

  end
end

module Spree
  module Admin
    class ContactUsEmailsController < ResourceController
      
      helper_method :clone_object_url

      def index
        session[:return_to] = request.url
        respond_with(@collection)
      end

      def show
        redirect_to action: :edit
      end

      def update
        if @object.update_attributes(permitted_resource_params)
          flash[:success] = flash_message_for(@object, :successfully_updated)
          respond_with(@object) do |format|
            format.html { redirect_to spree.edit_admin_contact_us_email_url }
            format.js   { render layout: false }
          end
        else
          # Stops people submitting blank slugs, causing errors when they try to
          # update the contact_us_email again
          @contact_us_email.slug = @contact_us_email.slug_was if @contact_us_email.slug.blank?
          respond_with(@object)
        end
      end

      def destroy
        @contact_us_email = Spree::ContactUsEmail.friendly.find(params[:id])
        @contact_us_email.discard

        flash[:success] = t('spree.notice_messages.contact_us_email_deleted')

        respond_with(@contact_us_email) do |format|
          format.html { redirect_to collection_url }
          format.js { render_js_for_destroy }
        end
      end

      def clone
        @new = @contact_us_email.duplicate

        if @new.save
          flash[:success] = t('spree.notice_messages.contact_us_email_cloned')
          redirect_to edit_admin_contact_us_email_url(@new)
        else
          flash[:error] = t('spree.notice_messages.contact_us_email_not_cloned', error: @new.errors.full_messages)
          redirect_to admin_contact_us_emails_url
        end
      end

      private
        def find_resource
          Spree::ContactUsEmail.with_deleted.friendly.find(params[:id])
        end

        def collection
          return @collection if @collection
          params[:q] ||= {}
          params[:q][:s] ||= "name asc"
          # @search needs to be defined as this is passed to search_form_for
          @search = super.ransack(params[:q])
          @collection = @search.result.
                order(id: :asc).
                page(params[:page]).per(params[:per_page])
        end

        def clone_object_url(resource)
          clone_admin_contact_us_email_url resource
        end
    end
  end
end

Spree::UserSessionsController.class_eval do
  before_action :set_resource, only: :create

private
  def set_resource
    unless spree_user_signed_in?
      resource = Spree::User.new
      respond_to do |format|
        format.html do
          flash.now[:error] = t('devise.failure.invalid')
          render :new, locals: {resource: resource}
        end
        format.js do
          render json: { error: t('devise.failure.invalid') },
            status: :unprocessable_entity
        end
      end
    end
  end
end
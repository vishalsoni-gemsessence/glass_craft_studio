Spree::UsersController.class_eval do
  prepend_before_action :load_object, only: [:show, :edit, :update, :order_history]
  before_action :get_user_completed_orders, only: [:show, :order_history]

  def show 
    @user_orders = @orders.joins(:shipments).where("spree_shipments.state = 'pending'")
  end

  def order_history
    @user_orders = @orders.joins(:shipments).where("spree_shipments.state = 'shipped'")
  end

 private
  def get_user_completed_orders
    @orders = @user.orders.complete.order('completed_at desc')
  end

  def user_params
    params.require(:user).permit(Spree::PermittedAttributes.user_attributes | [:email, :full_name])
  end
end


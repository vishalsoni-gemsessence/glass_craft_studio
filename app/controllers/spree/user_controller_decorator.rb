Spree::UsersController.class_eval do
  before_action :get_user_completed_orders, only: [:show, :user_order_history]

  def show 
    @current_orders = @orders.joins(:shipments).where("spree_shipments.state = 'pending'")
  end

  def user_order_history
    @completed_orders = @orders.joins(:shipments).where("spree_shipments.state = 'shipped'")
  end

 private
  def get_user_completed_orders
    @orders = @user.orders.complete.order('completed_at desc')
  end

  def user_params
    params.require(:user).permit(Spree::PermittedAttributes.user_attributes | [:email, :full_name])
  end
end


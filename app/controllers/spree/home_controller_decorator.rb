Spree::HomeController.class_eval do
  before_action :authenticate

  private

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == '@dmin' && password == 'P@ssword'
    end
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :set_locale
  before_action :detect_origin
  
  # def default_url_options
  #   { locale: I18n.locale }
  # end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  
  def detect_origin
    remote_ip = request.remote_ip
    results = Geocoder.search(remote_ip)
    @current_country = Country.new(results.first.country)
    @current_ip_address = remote_ip
  end
end

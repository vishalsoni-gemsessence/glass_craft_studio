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
    @current_ip_address = request.remote_ip    
    # results = Geocoder.search(@current_ip_address)
    # @current_country = Country.new(results.first.country)
    result = MAXMIND_DB.lookup(@current_ip_address)
    if result.found?
      @current_country = Country.new(result.country.iso_code)
    end
  end
end

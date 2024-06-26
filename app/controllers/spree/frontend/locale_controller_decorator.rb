Spree::LocaleController.class_eval do
  def set
    available_locales = Spree.i18n_available_locales
    requested_locale = params[:switch_to_locale] || params[:locale]

    if requested_locale && available_locales.map(&:to_s).include?(requested_locale)
      session[:locale] = requested_locale
      I18n.locale = requested_locale
      # flash.notice = t('spree.locale_changed')
    # else
      # flash[:error] = t('spree.locale_not_changed')
    end
    redirect_to request.referrer
  end
end
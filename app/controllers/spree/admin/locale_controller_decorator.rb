# frozen_string_literal: true

module Spree
  module Admin
    class LocaleController < Spree::Admin::BaseController
      def set
        locale = params[:switch_to_locale].to_s.presence

        if locale && I18n.available_locales.include?(locale.to_sym)
          I18n.locale = locale
          session[:locale] = locale

          respond_to do |format|
            format.json { render json: { locale: locale, location: spree.admin_url + request.referrer.split("admin")[1] } }
          end
        else
          respond_to do |format|
            format.json { render json: { locale: I18n.locale }, status: 404 }
          end
        end
      end
    end
  end
end

module Spree
  BaseHelper.module_eval do 

    def available_countries(restrict_to_zone: Spree::Config[:checkout_zone])
      checkout_zone = Zone.find_by(name: restrict_to_zone)

      if checkout_zone && checkout_zone.kind == 'country'
        countries = checkout_zone.country_list
      else
        countries = Country.all
      end

      country_names = Carmen::Country.all.map do |country|
        [country.code, country.name]
      end.to_h

      country_names.update I18n.t('spree.country_names', default: {}).stringify_keys

      countries.collect do |country|
        if country_names.fetch(country.iso, country.name)
          country.name = country_names.fetch(country.iso, country.name)
        end
        country
      end.sort_by { |c| c.name.parameterize }
    end

    def seo_url(taxon)
      url = spree.nested_taxons_path(taxon.permalink)
      if session[:locale] != "en"
        url = url.split(session[:locale])[1] if session[:locale] != "en"
      end
      url
    end
  end
end

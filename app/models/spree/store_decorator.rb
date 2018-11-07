Spree::Store.class_eval do

  def available_locales
    # locales = super()
    # puts "----- locales #{locales}."
    # if locales
    #   if locales.is_a?(Array)
    #     locales
    #   else
    #     super().split(",").map(&:to_sym)
    #   end
    # else
      Spree.i18n_available_locales
    # end
  end
  
end
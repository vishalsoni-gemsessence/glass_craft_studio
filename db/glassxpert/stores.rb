# frozen_string_literal: true

unless Spree::Store.where(code: 'gemmii-store').exists?
  Spree::Store.create!(
    name: "GlassCraft Studio",
    code: "glasscraft-studio",
    url: "gmasscraftstudio.com",
    mail_from_address: "info@gmasscraftstudio.com",
    default_currency: "USD"
  )
end

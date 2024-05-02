# frozen_string_literal: true

tax_category = Spree::TaxCategory.find_by!(name: "Default")
shipping_category = Spree::ShippingCategory.find_by!(name: "Default")

descriptions = [
  "Give your accessories new life by gemming them with these beautiful sparkling Swarovski crystals!! Gem your purse, sun glasses, high heels, caps, converse sneakers and even your bike for a whole new look! The possibilities are endless! Swarovski, enough said. Some things just cannot be compromised, and this is one of them. We have not found another crystal brand with quality and brilliance that comes close with Swarovski Elements crystals, so give your accessories the best there is! Looking for another color? Checkout our other listing for full color and size options! "
]

default_attrs = {
  description: descriptions[0],
  available_on: Time.current
}

clear_crystal_ss5_usd_price = 3.76
clear_crystal_ss5_hkd_price = 29.70

clear_ab_crystal_ss5_usd_price = 4.51
clear_ab_crystal_ss5_hkd_price = 35.63

normal_crystal_ss5_usd_price = 3.14
normal_crystal_ss5_hkd_price = 24.81

color_ab_crystal_ss5_usd_price = 3.73
color_ab_crystal_ss5_hkd_price = 29.47

shape_crystals = []

clear_crystals = [
  {
    name: "Clear 001",
    tax_category: tax_category,
    shipping_category: shipping_category,
    price: clear_crystal_ss5_usd_price,
    hkd_price: clear_crystal_ss5_hkd_price
  },
]

normal_crystals = [
  {
    name: "Air Blue Opal 285",
    tax_category: tax_category,
    shipping_category: shipping_category,
    price: normal_crystal_ss5_usd_price,
    hkd_price: normal_crystal_ss5_hkd_price
  }
]

clear_crystals.each do |product_attrs|
  hkd_price = product_attrs.delete(:hkd_price)
  Spree::Config[:currency] = "USD"

  product = Spree::Product.create!(default_attrs.merge(product_attrs))
  Spree::Config[:currency] = "HKD"
  product.reload
  product.price = hkd_price
  product.shipping_category = shipping_category
  product.save!
end

Spree::Config[:currency] = "USD"

normal_crystals.each do |product_attrs|
  hkd_price = product_attrs.delete(:hkd_price)
  Spree::Config[:currency] = "USD"

  product = Spree::Product.create!(default_attrs.merge(product_attrs))
  Spree::Config[:currency] = "HKD"
  product.reload
  product.price = hkd_price
  product.shipping_category = shipping_category
  product.save!
end

Spree::Config[:currency] = "USD"

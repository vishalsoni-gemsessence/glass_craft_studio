# frozen_string_literal: true

size = Spree::OptionType.find_by!(presentation: "Size")
package = Spree::OptionType.find_by!(presentation: "Package")

products = {
  clear: "Clear 001",
  air_blue_opal: "Air Blue Opal 285"
}

products.each do |key, name|
  product = Spree::Product.find_by!(name: name)
  product.option_types = [size, package]
  product.save!
end

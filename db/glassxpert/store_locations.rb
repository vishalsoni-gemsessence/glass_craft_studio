# frozen_string_literal: true

# Spree::StockLocation.create_with(backorderable_default: true)
#                     .find_or_create_by!(name: 'Hong Kong')
country =  Spree::Country.find_by(iso: 'IN')
location = Spree::StockLocation.first_or_create! name: 'India', address1: '', city: 'Indore', zipcode: '453331', country: country, backorderable_default: true, default: true, active: true

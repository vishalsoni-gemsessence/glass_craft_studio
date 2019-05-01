# This migration comes from solidus_easyship (originally 20190501080253)
class AddIsAvailableToSpreeShippingRate < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_shipping_rates, :is_available, :boolean, default: true
  end
end

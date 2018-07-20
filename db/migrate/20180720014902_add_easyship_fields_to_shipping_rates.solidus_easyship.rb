# This migration comes from solidus_easyship (originally 20180705065936)
class AddEasyshipFieldsToShippingRates < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_shipping_rates, :min_delivery_time, :integer
    add_column :spree_shipping_rates, :max_delivery_time, :integer
    add_column :spree_shipping_rates, :value_for_money_rank, :integer
  end
end

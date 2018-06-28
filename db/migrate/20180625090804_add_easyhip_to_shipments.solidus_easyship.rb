# This migration comes from solidus_easyship (originally 20180621090540)
class AddEasyhipToShipments < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_shipments, :easyship_shipment_id, :string
    add_column :spree_shipments, :courier_id, :string
    add_column :spree_shipments, :courier_name, :string
    add_column :spree_shipments, :shipping_label_state, :string
    add_column :spree_shipments, :shipping_label_url, :string
    add_column :spree_shipments, :tracking_number, :string
    add_column :spree_shipments, :currency, :string
  end
end

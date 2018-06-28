# This migration comes from solidus_easyship (originally 20180626130409)
class AddExtraDataToSpreeShipments < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_shipments, :min_delivery_time, :integer
    add_column :spree_shipments, :max_delivery_time, :integer
    add_column :spree_shipments, :value_for_money_rank, :integer
    add_column :spree_shipments, :delivery_time_rank, :integer
    add_column :spree_shipments, :shipment_charge, :decimal,  precision: 10, scale: 2, default: "0.0"
    add_column :spree_shipments, :shipment_charge_total, :decimal,  precision: 10, scale: 2, default: "0.0"
    add_column :spree_shipments, :insurance_fee, :decimal,  precision: 10, scale: 2, default: "0.0"
    add_column :spree_shipments, :import_tax_charge, :decimal,  precision: 10, scale: 2, default: "0.0"
    add_column :spree_shipments, :import_duty_charge, :decimal,  precision: 10, scale: 2, default: "0.0"
    add_column :spree_shipments, :ddp_handling_fee, :decimal,  precision: 10, scale: 2, default: "0.0"
    add_column :spree_shipments, :total_charge, :decimal,  precision: 10, scale: 2, default: "0.0"
  end
end

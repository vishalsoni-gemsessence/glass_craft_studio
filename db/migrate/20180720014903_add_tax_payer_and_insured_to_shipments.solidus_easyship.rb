# This migration comes from solidus_easyship (originally 20180705125740)
class AddTaxPayerAndInsuredToShipments < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_shipments, :taxes_duties_paid_by, :string, default: 'Receiver'
    add_column :spree_shipments, :is_insured, :boolean, default: false
  end
end

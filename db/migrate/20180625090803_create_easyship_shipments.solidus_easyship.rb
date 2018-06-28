# This migration comes from solidus_easyship (originally 20180618064041)
class CreateEasyshipShipments < ActiveRecord::Migration[4.2]
  def change
    create_table :easyship_shipments do |t|
      t.string :courier_id
      t.string :courier_name
      t.string :easyship_shipment_id
      t.string :shipping_label_state
      t.string :shipping_status
      t.string :shipping_label_url
      t.string :tracking_number
      t.string :tracking_page_url

      t.decimal :total_charge
      t.string :currency

      t.belongs_to :order, index: true
      t.timestamps
    end
  end
end

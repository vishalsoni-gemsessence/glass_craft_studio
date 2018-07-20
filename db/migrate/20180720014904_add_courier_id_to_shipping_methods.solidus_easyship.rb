# This migration comes from solidus_easyship (originally 20180706120241)
class AddCourierIdToShippingMethods < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_shipping_methods, :courier_id, :string
  end
end

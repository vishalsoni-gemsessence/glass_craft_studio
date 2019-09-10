# This migration comes from solidus_on_demand_products (originally 20190701131713)
class AddSaveHtmlFileFieldToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_products, :save_html, :text
  end
end

# This migration comes from solidus_on_demand_products (originally 20180518070435)
class CreateSpreeFilters < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_filters do |t|
      t.string :name
      t.datetime :deleted_at
      t.string :slug
      
      t.timestamps
    end
  end
end

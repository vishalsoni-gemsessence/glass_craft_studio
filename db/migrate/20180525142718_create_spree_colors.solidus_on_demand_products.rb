# This migration comes from solidus_on_demand_products (originally 20180518070820)
class CreateSpreeColors < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_colors do |t|
      t.string :color_code
      t.datetime :deleted_at
      t.references :filter
      t.string :slug
      
      t.timestamps
    end
  end
end

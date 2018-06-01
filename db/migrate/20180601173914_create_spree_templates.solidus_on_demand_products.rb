# This migration comes from solidus_on_demand_products (originally 20180518090610)
class CreateSpreeTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_templates do |t|
      t.string :name
      t.string :description
      t.decimal :width
      t.decimal :height
      t.decimal :scale, precision: 5, scale: 2
      t.string :edges
      t.string :slug
      t.datetime :deleted_at
      
      t.timestamps
    end
  end
end

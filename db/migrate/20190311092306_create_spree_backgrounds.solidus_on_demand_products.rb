# This migration comes from solidus_on_demand_products (originally 20190307072149)
class CreateSpreeBackgrounds < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_backgrounds do |t|
      t.string :name
      t.string :slug
      t.attachment :image
      t.datetime :deleted_at
      
      t.timestamps
    end
  end
end

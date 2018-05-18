# This migration comes from solidus_on_demand_products (originally 20180516165508)
class CreateSpreeStickers < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_stickers do |t|
      t.string :name
      t.string :slug
      t.attachment :image
      t.datetime :deleted_at

      t.timestamps
    end
  end
end

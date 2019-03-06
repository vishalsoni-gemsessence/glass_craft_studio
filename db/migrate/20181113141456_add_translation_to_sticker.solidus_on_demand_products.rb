# This migration comes from solidus_on_demand_products (originally 20181113141028)
class AddTranslationToSticker < ActiveRecord::Migration[5.1]
  def up
    # unless table_exists?(:spree_sticker_translations)
    #   params = { name: :string }
    #   Spree::Sticker.create_translation_table!(params, { migrate_data: true })
    # end
  end

  def down
    # Spree::Sticker.drop_translation_table! migrate_data: true
  end
end

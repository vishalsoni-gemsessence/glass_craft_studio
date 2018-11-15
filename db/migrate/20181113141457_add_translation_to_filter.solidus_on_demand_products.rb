# This migration comes from solidus_on_demand_products (originally 20181113141034)
class AddTranslationToFilter < ActiveRecord::Migration[5.1]
  def up
    unless table_exists?(:spree_filter_translations)
      params = { name: :string }
      Spree::Filter.create_translation_table!(params, { migrate_data: true })
    end
  end

  def down
    Spree::Filter.drop_translation_table! migrate_data: true
  end
end

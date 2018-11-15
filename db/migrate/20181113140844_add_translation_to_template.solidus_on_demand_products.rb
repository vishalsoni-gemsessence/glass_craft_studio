# This migration comes from solidus_on_demand_products (originally 20181113135842)
class AddTranslationToTemplate < ActiveRecord::Migration[5.1]
  def up
    unless table_exists?(:spree_template_translations)
      params = { name: :string, description: :string }
      Spree::Template.create_translation_table!(params, { migrate_data: true })
    end
  end

  def down
    Spree::Template.drop_translation_table! migrate_data: true
  end
end


# This migration comes from solidus_on_demand_products (originally 20181121093909)
class AddSlugToExtensionTranslatedTable < ActiveRecord::Migration[5.1]
  def up
    # Spree::Template.add_translation_fields! slug: :string
    # Spree::Sticker.add_translation_fields! slug: :string
    # Spree::Filter.add_translation_fields! slug: :string
  end

  def down
    # remove_column :spree_template_translations, :slug
    # remove_column :spree_sticker_translations, :slug
    # remove_column :spree_filter_translations, :slug
  end
end

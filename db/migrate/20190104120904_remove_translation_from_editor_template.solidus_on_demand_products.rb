# This migration comes from solidus_on_demand_products (originally 20181231101642)
class RemoveTranslationFromEditorTemplate < ActiveRecord::Migration[5.1]
  def up
    Spree::Template.drop_translation_table! migrate_data: true
    Spree::Filter.drop_translation_table! migrate_data: true
    Spree::Sticker.drop_translation_table! migrate_data: true
    Spree::Contact.drop_translation_table! migrate_data: true
  end

  def down
  end
end
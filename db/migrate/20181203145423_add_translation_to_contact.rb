class AddTranslationToContact < ActiveRecord::Migration[5.1]
  def up
    # unless table_exists?(:spree_contact_translations)
    #   params = { name: :string, slug: :string, subject: :string, message: :text }
    #   Spree::Contact.create_translation_table!(params, { migrate_data: true })
    # end
  end

  def down
    # Spree::Contact.drop_translation_table! migrate_data: true
  end
end

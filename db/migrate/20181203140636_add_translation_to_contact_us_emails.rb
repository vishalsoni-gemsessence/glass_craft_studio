class AddTranslationToContactUsEmails < ActiveRecord::Migration[5.1]
  def up
    unless table_exists?(:spree_contact_us_email_translations)
      params = { name: :string, slug: :string }
      Spree::ContactUsEmail.create_translation_table!(params, { migrate_data: true })
    end
  end

  def down
    Spree::ContactUsEmail.drop_translation_table! migrate_data: true
  end
end

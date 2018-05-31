class CreateSpreeContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_contacts do |t|
      t.references :contact_us_email
      t.string :name
      t.string :email
      t.string :subject
      t.text :message
      t.string :slug
      t.datetime :deleted_at

      t.timestamps
    end
  end
end

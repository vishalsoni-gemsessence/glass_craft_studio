class CreateSpreeContactUsEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_contact_us_emails do |t|
      t.string :name
      t.string :email
      t.string :slug
      t.datetime :deleted_at
      
      t.timestamps
    end
  end
end

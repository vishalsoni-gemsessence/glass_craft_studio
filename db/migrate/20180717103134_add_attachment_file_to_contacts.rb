class AddAttachmentFileToContacts < ActiveRecord::Migration[5.1]
  def self.up
    change_table :spree_contacts do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :spree_contacts, :file
  end
end

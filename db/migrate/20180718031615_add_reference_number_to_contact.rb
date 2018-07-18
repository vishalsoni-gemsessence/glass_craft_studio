class AddReferenceNumberToContact < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_contacts, :reference_number, :string, limit: 32
  end
end

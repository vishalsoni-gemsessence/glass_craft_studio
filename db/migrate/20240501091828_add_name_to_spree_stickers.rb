class AddNameToSpreeStickers < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_stickers, :name, :string
  end
end

class RemoveTitleAndDescripionToSpreeTaxonomy < ActiveRecord::Migration[5.1]
  def change
    remove_column :spree_taxonomies, :title, :string
    remove_column :spree_taxonomies, :description, :text
  end
end

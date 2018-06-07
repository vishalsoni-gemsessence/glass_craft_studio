class AddTitleAndDescripionToSpreeTaxonomy < ActiveRecord::Migration[5.1]
  def change
     add_column :spree_taxonomies, :title, :string
     add_column :spree_taxonomies, :description, :text
  end
end

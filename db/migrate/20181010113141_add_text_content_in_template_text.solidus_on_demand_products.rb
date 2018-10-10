# This migration comes from solidus_on_demand_products (originally 20181010111157)
class AddTextContentInTemplateText < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_template_texts, :text_content, :string, default: "This is dummy text"
  end
end

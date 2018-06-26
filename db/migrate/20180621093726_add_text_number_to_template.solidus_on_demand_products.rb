# This migration comes from solidus_on_demand_products (originally 20180621093634)
class AddTextNumberToTemplate < ActiveRecord::Migration[5.1]
  def change
  	add_column :spree_templates, :number_of_text_boxes, :integer
  end
end

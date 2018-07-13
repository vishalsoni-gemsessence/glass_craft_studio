# This migration comes from solidus_on_demand_products (originally 20180712073321)
class CreateSpreeTemplateFieldsPermissions < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_template_fields_permissions do |t|
    	t.boolean :flexibility_for_text, default: false
    	t.boolean :flexibility_for_background, default: false
      t.boolean :flexibility_for_sticker, default: false
    	t.integer :template_id
      t.timestamps
    end
  end
end

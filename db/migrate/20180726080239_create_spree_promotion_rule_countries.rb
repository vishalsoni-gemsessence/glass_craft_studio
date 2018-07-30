class CreateSpreePromotionRuleCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_promotion_rule_countries do |t|
      t.references :country, null: false
      t.references :promotion_rule, null: false

      t.timestamps precision: 6
    end
  end
end

module Spree
  class PromotionRuleCountry < Spree::Base    
    self.table_name = 'spree_promotion_rule_countries'

    belongs_to :promotion_rule, class_name: 'Spree::PromotionRule'
    belongs_to :country
  end
end
module Spree
  class Promotion < Spree::Base
    module Rules
      class Country < PromotionRule
        has_many  :promotion_rule_countries,  class_name: 'Spree::PromotionRuleCountry',
                                              foreign_key: :promotion_rule_id,
                                              dependent: :destroy
        has_many  :countries, through: :promotion_rule_countries, class_name: 'Spree::Country'
        
        
        def applicable?(promotable)
          promotable.is_a?(Spree::Order)
        end
        
        def eligible?(order, _options = {})
          order_country = country_in_order(order)
          countries.include?(order_country)        
        end
        
        def country_ids_string
          country_ids.join(',')
        end
        
        def country_ids_string=(country_ids)
          self.country_ids = country_ids.to_s.split(',').map(&:strip)
        end
        
        # Country in an order
        def country_in_order(order)
          order.ship_address.country if order.ship_address.present?
        end
        
        
      end
    end
  end
end
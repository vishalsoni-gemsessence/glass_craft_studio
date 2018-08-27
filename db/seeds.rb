# Spree::Core::Engine.load_seed if defined?(Spree::Core)
# Spree::Auth::Engine.load_seed if defined?(Spree::Auth)

def clear_default_setting
  puts "Start clearing default setting..."
  puts "SET FOREIGN_KEY_CHECKS=0"
  ActiveRecord::Base.connection.execute("SET FOREIGN_KEY_CHECKS=0")

  puts "Truncating spree_countries"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_countries")

  puts "Truncating spree_refund_reasons"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_refund_reasons")
  
  puts "Truncating spree_return_reasons"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_return_reasons")
  
  # puts "Truncating User and Roles"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_users")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_roles")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_roles_users")
  
  puts "Truncating Zones"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_zone_members")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_zones")

  puts "SET FOREIGN_KEY_CHECKS=1"
  ActiveRecord::Base.connection.execute("SET FOREIGN_KEY_CHECKS=1")
  puts "Finished clearing default setting..."
end

def clear_store_setting
  puts "Start clearing store setting..."
  puts "SET FOREIGN_KEY_CHECKS=0"
  ActiveRecord::Base.connection.execute("SET FOREIGN_KEY_CHECKS=0")

  puts "Truncating ckeditor_assets"
  ActiveRecord::Base.connection.execute("TRUNCATE ckeditor_assets")  
  puts "Truncating friendly_id_slugs"
  ActiveRecord::Base.connection.execute("TRUNCATE friendly_id_slugs")

  puts "Truncating solidus_paypal_braintree_configurations"
  ActiveRecord::Base.connection.execute("TRUNCATE solidus_paypal_braintree_configurations")
  puts "Truncating solidus_paypal_braintree_customers"
  ActiveRecord::Base.connection.execute("TRUNCATE solidus_paypal_braintree_customers")
  puts "Truncating solidus_paypal_braintree_sources"
  ActiveRecord::Base.connection.execute("TRUNCATE solidus_paypal_braintree_sources")


  puts "Truncating spree_addresses"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_addresses")
  puts "Truncating spree_adjustment_reasons"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_adjustment_reasons")
  puts "Truncating spree_adjustments"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_adjustments")
  puts "Truncating spree_assets"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_assets")
  puts "Truncating spree_calculators"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_calculators")
  puts "Truncating spree_cartons"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_cartons")
  puts "Truncating spree_colors"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_colors")
  puts "Truncating spree_credit_cards"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_credit_cards")
  puts "Truncating spree_customer_returns"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_customer_returns")
  puts "Truncating spree_inventory_units"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_inventory_units")
  puts "Truncating spree_line_item_actions"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_line_item_actions")
  puts "Truncating spree_line_items"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_line_items")
  puts "Truncating spree_log_entries"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_log_entries")
  puts "Truncating spree_option_type_prototypes"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_option_type_prototypes")
  puts "Truncating spree_option_types"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_option_types")
  puts "Truncating spree_option_values"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_option_values")
  puts "Truncating spree_option_values_variants"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_option_values_variants")
  puts "Truncating spree_order_mutexes"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_order_mutexes")
  puts "Truncating spree_orders"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_orders")
  puts "Truncating spree_order_promotions"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_order_promotions")
  puts "Truncating spree_pages"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_pages")
  puts "Truncating spree_pages_stores"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_pages_stores")
  puts "Truncating spree_payment_capture_events"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_payment_capture_events")
  puts "Truncating spree_payment_methods"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_payment_methods")
  puts "Truncating spree_payments"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_payments")
  puts "Truncating spree_preferences"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_preferences")
  puts "Truncating spree_prices"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_prices")
  puts "Truncating spree_product_option_types"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_product_option_types")
  puts "Truncating spree_product_promotion_rules"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_product_promotion_rules")
  puts "Truncating spree_product_properties"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_product_properties")
  puts "Truncating spree_products"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_products")
  puts "Truncating spree_products_taxons"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_products_taxons")
  puts "Truncating spree_promotion_action_line_items"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_promotion_action_line_items")
  puts "Truncating spree_promotion_actions"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_promotion_actions")
  puts "Truncating spree_promotion_categories"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_promotion_categories")
  puts "Truncating spree_promotion_code_batches"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_promotion_code_batches")
  puts "Truncating spree_promotion_codes"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_promotion_codes")
  puts "Truncating spree_promotion_rule_taxons"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_promotion_rule_taxons")
  puts "Truncating spree_promotion_rules"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_promotion_rules")
  puts "Truncating spree_promotion_rules_users"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_promotion_rules_users")
  puts "Truncating spree_promotions"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_promotions")
  puts "Truncating spree_properties"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_properties")
  puts "Truncating spree_property_prototypes"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_property_prototypes")
  puts "Truncating spree_prototype_taxons"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_prototype_taxons")
  puts "Truncating spree_prototypes"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_prototypes")
  puts "Truncating spree_refund_reasons"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_refund_reasons")
  puts "Truncating spree_refunds"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_refunds")
  puts "Truncating spree_reimbursement_credits"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_reimbursement_credits")
  puts "Truncating spree_reimbursement_types"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_reimbursement_types")
  puts "Truncating spree_reimbursements"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_reimbursements")
  puts "Truncating spree_return_authorizations"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_return_authorizations")
  puts "Truncating spree_return_items"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_return_items")
  puts "Truncating spree_shipments"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_shipments")
  puts "Truncating spree_shipping_categories"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_shipping_categories")
  puts "Truncating spree_shipping_method_categories"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_shipping_method_categories")
  puts "Truncating spree_shipping_method_stock_locations"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_shipping_method_stock_locations")
  puts "Truncating spree_shipping_method_zones"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_shipping_method_zones")
  puts "Truncating spree_shipping_methods"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_shipping_methods")
  puts "Truncating spree_shipping_rate_taxes"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_shipping_rate_taxes")
  puts "Truncating spree_shipping_rates"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_shipping_rates")
  puts "Truncating spree_state_changes"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_state_changes")
  puts "Truncating spree_stickers"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_stickers")
  puts "Truncating spree_stock_items"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_stock_items")
  puts "Truncating spree_stock_locations"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_stock_locations")
  puts "Truncating spree_stock_movements"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_stock_movements")
  puts "Truncating spree_store_credit_categories"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_store_credit_categories")
  puts "Truncating spree_store_credit_events"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_store_credit_events")
  puts "Truncating spree_store_credit_types"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_store_credit_types")
  puts "Truncating spree_store_credit_update_reasons"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_store_credit_update_reasons")
  puts "Truncating spree_store_credits"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_store_credits")
  puts "Truncating spree_store_payment_methods"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_store_payment_methods")
  puts "Truncating spree_stores"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_stores")
  puts "Truncating spree_tax_categories"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_tax_categories")
  puts "Truncating spree_tax_rate_tax_categories"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_tax_rate_tax_categories")
  puts "Truncating spree_tax_rates"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_tax_rates")
  puts "Truncating spree_taxonomies"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_taxonomies")
  puts "Truncating spree_taxons"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_taxons")
  puts "Truncating spree_template_images"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_template_images")
  puts "Truncating spree_templates"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_templates")

  puts "Truncating spree_unit_cancels"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_unit_cancels")
  puts "Truncating spree_user_addresses"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_user_addresses")
  puts "Truncating spree_user_stock_locations"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_user_stock_locations")

  puts "Truncating spree_variant_property_rule_conditions"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_variant_property_rule_conditions")
  puts "Truncating spree_variant_property_rule_values"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_variant_property_rule_values")
  puts "Truncating spree_variant_property_rules"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_variant_property_rules")
  puts "Truncating spree_variants"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_variants")
  puts "Truncating spree_wallet_payment_sources"
  ActiveRecord::Base.connection.execute("TRUNCATE spree_wallet_payment_sources")
  
  puts "SET FOREIGN_KEY_CHECKS=1"
  ActiveRecord::Base.connection.execute("SET FOREIGN_KEY_CHECKS=1")  

  puts "Finished clear store setting"
end

def store_setting
  %w(
    stores
    store_locations
  ).each do |store|
    puts "loading GlassXpert seed file: #{store}"
    require_relative "glassxpert/#{store}"
  end  
  
  %w(
    tax_categories
    tax_rates
  ).each do |tax|
    puts "loading GlassXpert seed file: #{tax}"
    require_relative "glassxpert/#{tax}"
  end

  %w(
    shipping_categories
  ).each do |shipping|
    puts "loading GlassXpert (shipping definition) seed file: #{shipping}"
    require_relative "glassxpert/#{shipping}"
  end
  
end

def product_setting
  %w(
    taxonomies
    glass_gift_products
    taxons
    option_types
    option_values
    product_option_types
    product_properties
    variants
    stock
    assets
  ).each do |product_seed|
    puts "loading GlassXpert (product) seed file: #{product_seed}"
    require_relative "glassxpert/#{product_seed}"
  end  
end

def upload_stickers
  stickers_path = "#{Rails.root}/db/glassxpert/stickers"
  puts "Stickers path: #{stickers_path}"
  files = Dir.glob("#{stickers_path}/**/*")
  files.each_with_index do |file, i|
    puts "Sticker #{i+1}: #{file}"
    Spree::Sticker.create(name: "Sticker #{i+1}", image: File.open(file))
  end
end

def create_templates
  # template      
end

upload_stickers
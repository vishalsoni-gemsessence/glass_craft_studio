# Spree::Core::Engine.load_seed if defined?(Spree::Core)
# Spree::Auth::Engine.load_seed if defined?(Spree::Auth)

def clear_default_setting

  if ActiveRecord::Base.connection.adapter_name.downcase.include?("mysql")
    ActiveRecord::Base.connection.execute("SET FOREIGN_KEY_CHECKS=0")
  end
  ActiveRecord::Base.connection.execute("TRUNCATE spree_countries")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_refund_reasons")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_return_reasons")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_wallet_payment_sources")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_roles")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_roles_users")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_zone_members")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_zones")
  if ActiveRecord::Base.connection.adapter_name.downcase.include?("mysql")
    ActiveRecord::Base.connection.execute("SET FOREIGN_KEY_CHECKS=1")
  end
end

def clear_store_setting
  if ActiveRecord::Base.connection.adapter_name.downcase.include?("mysql")
    ActiveRecord::Base.connection.execute("SET FOREIGN_KEY_CHECKS=0")
  end
  ActiveRecord::Base.connection.execute("TRUNCATE ckeditor_assets")
  ActiveRecord::Base.connection.execute("TRUNCATE friendly_id_slugs")
  ActiveRecord::Base.connection.execute("TRUNCATE solidus_paypal_braintree_configurations")
  ActiveRecord::Base.connection.execute("TRUNCATE solidus_paypal_braintree_customers")
  ActiveRecord::Base.connection.execute("TRUNCATE solidus_paypal_braintree_sources CASCADE")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_addresses")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_adjustment_reasons")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_adjustments")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_assets")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_calculators")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_cartons")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_colors")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_credit_cards")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_customer_returns")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_inventory_units")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_line_item_actions")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_line_items")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_log_entries")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_option_type_prototypes")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_option_types")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_option_values")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_option_values_variants")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_order_mutexes")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_orders")
  # ActiveRecord::Base.connection.execute("TRUNCATE spree_order_promotions")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_pages")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_pages_stores")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_payment_capture_events")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_payment_methods CASCADE")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_payments")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_preferences")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_prices")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_product_option_types")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_product_promotion_rules")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_product_properties")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_products")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_products_taxons")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_promotion_action_line_items")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_promotion_actions")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_promotion_categories")
  # ActiveRecord::Base.connection.execute("TRUNCATE spree_promotion_code_batches")
  ActiveRecord::Base.connection.execute('TRUNCATE spree_promotion_codes, spree_promotion_code_batches RESTART IDENTITY')
  ActiveRecord::Base.connection.execute("TRUNCATE spree_promotion_rule_taxons")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_promotion_rules")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_promotion_rules_users")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_promotions CASCADE")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_properties")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_property_prototypes")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_prototype_taxons")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_prototypes")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_refund_reasons")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_refunds")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_reimbursement_credits")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_reimbursement_types")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_reimbursements")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_return_authorizations")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_return_items")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_shipments")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_shipping_categories")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_shipping_method_categories")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_shipping_method_stock_locations")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_shipping_method_zones")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_shipping_methods")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_shipping_rate_taxes")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_shipping_rates")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_state_changes")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_stickers")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_stock_items")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_stock_locations")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_stock_movements")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_store_credit_categories")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_store_credit_events")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_store_credit_types")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_store_credit_update_reasons")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_store_credits")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_store_payment_methods")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_stores")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_tax_rate_tax_categories CASCADE")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_tax_rates CASCADE")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_tax_categories CASCADE")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_taxonomies")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_taxons")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_template_images")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_templates")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_unit_cancels")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_user_addresses")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_user_stock_locations")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_variant_property_rule_conditions")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_variant_property_rule_values")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_variant_property_rules")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_variants")
  ActiveRecord::Base.connection.execute("TRUNCATE spree_wallet_payment_sources")

  if ActiveRecord::Base.connection.adapter_name.downcase.include?("mysql")
    ActiveRecord::Base.connection.execute("SET FOREIGN_KEY_CHECKS=1")
  end

end

def store_setting
  %w(
    stores
    store_locations
  ).each do |store|
    require_relative "glassxpert/#{store}"
  end

  %w(
    tax_categories
    tax_rates
  ).each do |tax|

    require_relative "glassxpert/#{tax}"
  end

  %w(
    shipping_categories
  ).each do |shipping|

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
  ).each do |product_seed|
    #assets
    require_relative "glassxpert/#{product_seed}"
  end
end

def upload_stickers
  stickers_path = "#{Rails.root}/db/glassxpert/stickers"

  files = Dir.glob("#{stickers_path}/**/*")
  files.each_with_index do |file, i|

    Spree::Sticker.create(name: "Sticker #{i+1}", image: File.open(file))
  end
end

  Spree::User.destroy_all

  user = Spree::User.create!(email: "admin@example.com", password: "P@ssword")

  admin_role = Spree::Role.find_or_create_by!(name: "admin")

  user.spree_roles << admin_role

  user = Spree::User.create!(email: "adminuser@example.com", password: "P@ssword")

  admin_role = Spree::Role.find_or_create_by!(name: "admin")

  user.spree_roles << admin_role

def create_templates
  # template
end
clear_default_setting
clear_store_setting

store_setting
product_setting

upload_stickers

# Configure Solidus Preferences
# See http://docs.solidus.io/Spree/AppConfiguration.html for details

Spree.config do |config|
  # Core:

  # Default currency for new sites
  config.currency = "HKD"

  # from address for transactional emails
  config.mails_from = "info@glassxpertndesign.com"

  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false

  # When set, product caches are only invalidated when they fall below or rise
  # above the inventory_cache_threshold that is set. Default is to invalidate cache on
  # any inventory changes.
  # config.inventory_cache_threshold = 3


  # Frontend:

  # Custom logo for the frontend
  # config.logo = "logo/solidus_logo.png"

  # Template to use when rendering layout
  # config.layout = "spree/layouts/spree_application"


  # Admin:

  # Custom logo for the admin
  # config.admin_interface_logo = "logo/solidus_logo.png"

  # Gateway credentials can be configured statically here and referenced from
  # the admin. They can also be fully configured from the admin.
  #
  # config.static_model_preferences.add(
  #   Spree::Gateway::StripeGateway,
  #   'stripe_env_credentials',
  #   secret_key: ENV['STRIPE_SECRET_KEY'],
  #   publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
  #   server: Rails.env.production? ? 'production' : 'test',
  #   test_mode: !Rails.env.production?
  # )
end

Spree::Frontend::Config.configure do |config|
  config.locale = 'en'
end

Spree::Backend::Config.configure do |config|
  config.locale = 'en'
end

Spree::Api::Config.configure do |config|
  config.requires_authentication = true
end

Spree.user_class = "Spree::LegacyUser"

Spree::Backend::Config.configure do |config|
  config.locale = 'en'
  config.class::CONTACTS ||= [:contacts, :contact_us_email]

  config.menu_items << config.class::MenuItem.new(
                          config.class::CONTACTS,
                          'wrench',
                          condition: -> { can?(:admin, Spree::Contact) },
                          partial: 'spree/admin/shared/contacts_sub_menu',
                          url: :admin_contacts_path
                        )
end


Spree::Config.order_number_generator = Spree::Order::DateNumberGenerator.new(
  prefix: 'GX',
  length: 5,
  letters: false
)

Spree::Money.default_formatting_rules[:with_currency] = false
Spree::Money.default_formatting_rules[:symbol_position] = :before

Money::Currency.register({
    :priority        => 1,
    :iso_code        => "HKD",
    :iso_numeric     => "344",
    :name            => "HKD",
    :symbol          => "HKD ",
    :subunit         => "Cent",
    :subunit_to_unit => 100,
    :separator       => ",",
    :delimiter       => ".",
    :html_entity     => "HKD ",
})

Rails.application.config.spree.stock_splitters = []
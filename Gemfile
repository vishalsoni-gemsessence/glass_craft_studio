source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.0'
# Use mysql2 as the database for Active Record
gem 'mysql2'
# Use Puma as the app server
group :development do
  gem 'puma', '~> 3.7'
end

group :staging do
  gem 'unicorn'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use figaro for envirnoment variables
gem 'figaro'
gem 'truncate_html'
gem 'tinymce-rails-langs'

# Use solidus and its extensions for e-commerce solution
gem 'solidus', '2.6'
gem 'solidus_auth_devise'

gem 'solidus_editor', github: 'solidusio-contrib/solidus_editor', branch: 'master'
gem 'solidus_paypal_braintree', bitbucket: '36etcetera/solidus-braintree-paypal', branch: :master
# gem 'solidus_paypal_braintree', github: 'solidusio/solidus_paypal_braintree', branch: :master
# gem 'solidus_paypal_braintree', path: '../solidus_paypal_braintree'
gem 'solidus_prototypes'

# Use solidus_on_demand_products to customize product
# For development on local
# gem 'solidus_on_demand_products', path: '../image-editor-plugin'
gem 'solidus_on_demand_products', bitbucket: '36etcetera/image-editor-plugin', branch: "Release-2019-09-11"

# For development on local
# gem 'solidus_easyship', path: '../solidus-easyship'
gem 'solidus_easyship', bitbucket: '36etcetera/solidus-easyship', branch: "master"


# Use pnotify-rails for show messages on popup
gem 'pnotify-rails'

gem 'globalize', github: 'globalize/globalize'
gem 'friendly_id-globalize'

gem 'solidus_i18n', github: 'solidusio-contrib/solidus_i18n'
gem 'rails-i18n'
gem 'kaminari-i18n'
gem 'routing-filter'
gem "i18n-js"
gem "pg"
# gem 'solidus_globalize', path: '../solidus_globalize'
gem 'solidus_globalize', bitbucket: '36etcetera/solidus-globalize', branch: "master"

# gem 'solidus_static_content', path: '../solidus_static_content'
gem 'solidus_static_content', bitbucket: '36etcetera/solidus-static-content', branch: "master"
gem "mini_magick"
gem "sidekiq"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13.0'
  gem 'selenium-webdriver'
  gem 'pry-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Use Capistrano for deployment
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  gem 'capistrano-passenger'
  gem 'capistrano3-unicorn'
  gem 'capistrano-faster-assets'
  gem 'capistrano-rails-collection'
  gem 'capistrano-sidekiq'

  gem 'rb-readline'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Ruby geocoding solution
# gem 'geocoder'
gem 'countries', require: 'countries/global'

gem 'maxminddb'
gem 'geolite2_city'

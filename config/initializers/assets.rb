# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w( spree/frontend/* )
Rails.application.config.assets.precompile += %w( ckeditor/*)
Rails.application.config.assets.precompile += %w( tinymce-jquery.js )
Rails.application.config.assets.precompile += %w( solidus_admin/select2_locales/select2_locale_zh-HK.js )
Rails.application.config.assets.precompile += %w( cookieBubble.js cookieBubble.css cookieBubble.eu.js )
Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)\z/

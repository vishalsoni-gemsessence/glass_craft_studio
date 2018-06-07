# Required if using solidus_frontend
Spree::Config[:show_raw_product_description] = true

SpreeEditor::Config.tap do |config|
  config.ids = 'product_description page_body event_body'

  # change the editor to CKEditor
  # config.current_editor = 'CKEditor'
  config.current_editor = 'TinyMCE'
end

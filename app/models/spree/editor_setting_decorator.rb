Spree::EditorSetting.class_eval do
  preference :enabled,        :boolean, default: true
  preference :current_editor, :string,  default: 'TinyMCE'
  preference :ids,            :string,  default: 'product_description page_body taxon_description product_translations_attributes_1_description product_translations_attributes_2_description taxon_translations_attributes_1_description taxon_translations_attributes_2_description'

  def self.editors
    %w(TinyMCE CKEditor)
  end
end
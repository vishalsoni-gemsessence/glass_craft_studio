Spree::EditorSetting.class_eval do
  preference :enabled,        :boolean, default: true
  preference :current_editor, :string,  default: 'TinyMCE'
  preference :ids,            :string,  default: 'product_description page_body taxon_description'

  def self.editors
    %w(TinyMCE CKEditor)
  end
end
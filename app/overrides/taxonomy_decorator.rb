Spree::Taxonomy.class_eval do
  validates_presence_of :title, :description
end
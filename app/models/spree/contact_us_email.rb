require 'discard'

module Spree
  class ContactUsEmail < Spree::Base
    extend FriendlyId
    friendly_id :slug_candidates, use: :history

    acts_as_paranoid
    include Spree::ParanoiaDeprecations

    include Discard::Model
    self.discard_column = :deleted_at

    translates :name, :slug, fallbacks_for_empty_translations: true
    include SolidusGlobalize::Translatable

    has_many :contacts, class_name: 'Spree::Contact', dependent: :destroy

    validates_presence_of :name, :email

    def slug_candidates
      [
        :name
      ]
    end

    def deleted?
      !!deleted_at
    end
    
    def duplicate
      duplicator = ContactUsEmailDuplicator.new(self)
      duplicator.duplicate
    end
  end
end
require 'discard'

module Spree
  class Contact < Spree::Base
    extend FriendlyId
    friendly_id :slug_candidates, use: :history

    acts_as_paranoid
    include Spree::ParanoiaDeprecations

    include Discard::Model
    self.discard_column = :deleted_at

    has_attached_file :file,
                      styles: { mini: '48x48>' },
                      default_style: :mini,
                      default_url: 'noimage/:style.png',
                      url: '/spree/contacts/:id/:style/:basename.:extension',
                      path: ':rails_root/public/spree/contacts/:id/:style/:basename.:extension',
                      convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
    
    validates_attachment :file, 
      content_type: { content_type: %w(image/jpeg image/jpg image/png image/gif) }, 
      size: { in: 0..10.megabytes }

    validates_presence_of :name, :email, :subject, :message

    belongs_to :contact_us_email, class_name: 'Spree::ContactUsEmail'

    after_create :send_email

    def send_email
      ContactsMailer.send_email(self).deliver_later
    end

    def slug_candidates
      [
        :name
      ]
    end

    def deleted?
      !!deleted_at
    end
  end
end
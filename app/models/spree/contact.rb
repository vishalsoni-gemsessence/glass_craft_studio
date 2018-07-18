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
                      styles: { mini: '48x48>', email: '150x150>' },
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

    before_validation :generate_reference_number, on: :create
    after_create :send_email

    def send_email
      if Rails.env.development?
        ContactMailer.notify_email(self).deliver_now
        ContactMailer.acknowledge_email(self).deliver_now
      else  
        ContactMailer.notify_email(self).deliver_later
        ContactMailer.acknowledge_email(self).deliver_later
      end
    end

    def slug_candidates
      [
        :name
      ]
    end

    def deleted?
      !!deleted_at
    end
    
    private 
    
    def generate_reference_number
      prefix = 'GX-ENQ-'
      length = 8
      letters = false
      possible = (0..9).to_a
      possible += ('A'..'Z').to_a if letters

      random = ''
      
      loop do
        # Make a random number.
        random = "#{prefix}#{(0...length).map { possible.sample }.join}"
        # Use the random number if no other order exists with it.
        if Spree::Contact.exists?(reference_number: random)
          # If over half of all possible options are taken add another digit.
          length += 1 if Spree::Contact.count > (10**length / 2)
        else
          break random
        end
      end
            
      self.reference_number = random
    end
    
  end
end
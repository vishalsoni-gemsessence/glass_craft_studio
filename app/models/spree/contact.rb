require 'discard'

module Spree
  class Contact < Spree::Base
    extend FriendlyId
    friendly_id :slug_candidates, use: :history

    acts_as_paranoid
    include Spree::ParanoiaDeprecations

    include Discard::Model
    self.discard_column = :deleted_at

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
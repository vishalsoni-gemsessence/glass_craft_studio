module Spree
  class ContactUsEmailDuplicator
    attr_accessor :contact_us_email

    def initialize(contact_us_email)
      @contact_us_email = contact_us_email
    end

    def duplicate
      new_contact_us_email = duplicate_contact_us_email

      new_contact_us_email
    end

    protected

    def duplicate_contact_us_email
      contact_us_email.dup.tap do |new_contact_us_email|
        new_contact_us_email.name = "COPY OF #{contact_us_email.name}"
        new_contact_us_email.created_at = nil
        new_contact_us_email.deleted_at = nil
        new_contact_us_email.updated_at = nil
        new_contact_us_email.email = contact_us_email.email
      end
    end
  end
end

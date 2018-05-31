class ContactsMailer < ApplicationMailer
  def send_email(contacts)
    @contacts = contacts
    mail(to: @contacts.contact_us_email.email, subject: @contacts.subject)
  end
end

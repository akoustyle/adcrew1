# class Contact < MailForm::Base
#   include MailForm::Delivery

#   attribute :name,      validate: true
#   attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
#   attribute :category
#   attribute :entreprise
#   attribute :message,    validate: true
#   attribute :nickname,  captcha: true
#   # after_create :send_email

#   def persisted?
#     false
#   end
#   # Declare the e-mail headers. It accepts anything the mail method
#   # in ActionMailer accepts.
#   def headers
#     {
#       :subject => "Contact Form Inquiry from %('#{name}' <#{email})",
#       :to => "maoukola.oneal@gmail.com",
#       :from => "email@myallowedemailingdomain"
#     }
#   end
# end
class Contact < ApplicationRecord
  validates :email, :name, :message, presence: true
  after_create :send_email

  def formatted_message
    "New message from: #{email} - #{name}<br> Entreprise: #{entreprise}<br> Category: #{category} <br> Message: #{message}. <br> reply to mailto:#{email}."
  end

  private

  def send_email
    ContactMailer.with(contact: self).new.deliver_now
  end

end

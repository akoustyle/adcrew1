class Contact < MailForm::Base
  include MailForm::Delivery

  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :category,   validate: true
  attribute :entreprise
  attribute :message,    validate: true
  attribute :form
  attribute :nickname,  captcha: true

  def persisted?
    false
  end
  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contact Form Inquiry",
      :to => "maoukola.oneal@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end

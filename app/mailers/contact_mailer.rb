class ContactMailer < ApplicationMailer
  def new
    @contact = params[:contact]
    @email = 'maoukola.oneal@gmail.com'

    if Rails.env.production?
      mail_with_sendgrid_api
    else
      mail to: @email
    end
  end

  private

  def mail_with_sendgrid_api
    sg = SendGrid::API.new(api_key: Rails.application.credentials.sendgrid_api_key) # => uses API v3
    from = SendGrid::Email.new(email: @message.email)
    to = SendGrid::Email.new(email: @email)
    message = SendGrid::Message.new(type: 'text/html', value: @contact.message)
    mail = SendGrid::Mail.new(from, @contact.name, to, message)
    sg.client.mail._('send').post(request_body: mail.to_json)
  end
end

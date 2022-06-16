class ContactMailer < ApplicationMailer
  def new
    @contact = params[:contact]
    @email = 'contact@adcrew-paris.com'

    if Rails.env.production?
      mail_with_sendgrid_api
    else
      mail to: @email
    end
  end

  private

  def mail_with_sendgrid_api
    sg = SendGrid::API.new(api_key: Rails.application.credentials.sendgrid_api_key)
    from = SendGrid::Email.new(email: 'contact@adcrew-paris.com')
    to = SendGrid::Email.new(email: 'contact@adcrew-paris.com')
    message = SendGrid::Content.new(type: 'text/html', value: @contact.formatted_message)
    mail = SendGrid::Mail.new(from, @contact.name, to, message)
    sg.client.mail._('send').post(request_body: mail.to_json)
  end
end

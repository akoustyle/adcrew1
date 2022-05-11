
# require 'mail_form'

class ContactsController < ApplicationController
#   before_action :contact_params, only: [:create]
#   skip_before_action :authenticate_user!

#   def new
#     @contact = Contact.new
#     # authorize @contact
#   end

#   def create
#     @contact = Contact.new(params[:message])
#     @contact.request = request
#     # authorize @contact
#     if @contact.deliver
#       flash.now[:success] = 'Message sent!'
#       render :create

#     else
#       flash.now[:error] = 'Could not send message'
#       # binding.pry
#       render :new
#     end
#   rescue ScriptError
#       flash[:error] = 'Sorry, something was wrong'
#   end

#   private
#   def contact_params
#     params.require(:contact).permit(:name, :email, :category, :entreprise, :message, :captcha)
#   end
# end
def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = "Message successfully sent. Thanks!"
      redirect_to contact_path
    else
      render 'pages/contact'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :name, :message, :entreprise, :category)
  end
end

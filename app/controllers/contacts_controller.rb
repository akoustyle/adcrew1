# require 'mail_form'

class ContactsController < ApplicationController
  before_action :contact_params, only: [:create]
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Message sent!'
      render :create
    else
      flash.now[:error] = 'Could not send message'
      render :new
    end
  rescue ScriptError
      flash[:error] = 'Sorry, something was wrong'
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :category, :entreprise, :message, :nickname, :captcha)
  end
end

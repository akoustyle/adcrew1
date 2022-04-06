# require 'mail_form'

class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Message sent!'
      render :new
    else
      flash.now[:error] = 'Could not send message'
      render :new
    end
  rescue ScriptError
      flash[:error] = 'Sorry, something was wrong'
  end
end

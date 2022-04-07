require 'mail_form'

class ContactsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:create, :new]
  # after_action :skip_pundit?, only: :create
  # before_action :find_contact

  def index
    # authorize @contact
    #  @contacts = policy_scope(Contact)
  end

  def new
    @contact = Contact.new
    # authorize @contact
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    # authorize @contact
    if @contact.deliver
      flash.now[:success] = 'Message sent!'
      render :create
      # redirect_to root_path
    else
      flash.now[:error] = 'Could not send message'
      binding.pry
      render :new
    end
  rescue ScriptError
      flash[:error] = 'Sorry, something was wrong'
  end


  # private

  # def find_contact
  #   # @talent = Talent.find(params[:id])
  #   @contact = policy_scope(Contact).find(params[:id])
  #   authorize @contact
  # end

end

class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @campaigns = Campaign.all
  end

  def team
    @members = ['Maud', 'Jessica', 'Léonie', 'Alix', 'Maurine', 'Manon', 'Melchior', 'Pénélope', 'Carla', 'Sofia']
    @members = @members.select { |member| member.start_with?(params[:member]) } if params[:member]
  end

  def prod
    @campaigns = Campaign.all
  end

  def contact_page
    @contact = Contact.new
  end

  def mentions
  end
end

class PagesController < ApplicationController
  def home
  end

  def team
    @members = [ 'Maud', 'Jessica', 'Léonie', 'Alix', 'Maurine', 'Manon', 'Melchior', 'Pénélope', 'Carla', 'Sofia' ]
    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end

  def prod
  end

  def contact
  end

  def index
    @campaigns = Campaign.all
  end
end

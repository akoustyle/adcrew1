class PagesController < ApplicationController
  def home
    @campaigns = Campaign.all
  end

  def team
    @members = [ 'Maud', 'Jessica', 'Léonie', 'Alix', 'Maurine', 'Manon', 'Melchior', 'Pénélope', 'Carla', 'Sofia' ]
    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end

  def prod
    @campaigns = Campaign.all
  end

  def contact
  end
end

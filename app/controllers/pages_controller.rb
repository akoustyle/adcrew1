class PagesController < ApplicationController
  def home
    @campaigns = Campaign.all
  end

  def team
<<<<<<< HEAD
    @members = ['Maud', 'Jessica', 'Léonie', 'Alix', 'Maurine', 'Manon', 'Melchior', 'Pénélope', 'Carla', 'Sofia']
    @members = @members.select { |member| member.start_with?(params[:member]) } if params[:member]
=======
    @members = [ 'Maud', 'Jessica', 'Léonie', 'Alix', 'Maurine', 'Manon', 'Melchior', 'Pénélope', 'Carla', 'Sofia' ]
    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5
  end

  def prod
    @campaigns = Campaign.all
  end

  def contact
  end

  def mentions
  end
end

class PagesController < ApplicationController
  def home
  end

  def team
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]
  end

  def prod
  end
end

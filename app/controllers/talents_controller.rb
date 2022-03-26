class TalentsController < ApplicationController
<<<<<<< HEAD
  before_action :find_talent, only: %i[show edit update destroy]

  def index
    # if params[:pole].blank?
    @talents = Talent.all.order(created_at: :desc)
    #  else
    # @pole_id = Pole.find_by(name: params[:pole]).id
    # @talents = Talent.where(:pole_id => @pole_id).order(created_at: :desc)
    #  end
=======
 before_action :find_talent, only: [:show, :edit, :update, :destroy]

  def index
    # if params[:pole].blank?
      @talents = Talent.all.order(created_at: :desc)
  #  else
    # @pole_id = Pole.find_by(name: params[:pole]).id
    # @talents = Talent.where(:pole_id => @pole_id).order(created_at: :desc)
  #  end
>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5
  end

  def show
    # @talent.scrape_youtube
  end

  def new
<<<<<<< HEAD
    @talent = Talent.new
    # @talent = current_user.talents.build
    # @poles = Pole.all.map{ |p| [p.name, p.id] }
=======
   @talent = Talent.new
  #@talent = current_user.talents.build
  # @poles = Pole.all.map{ |p| [p.name, p.id] }
>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5
  end

  def create
    @talent = Talent.new(talent_params)
    # @talent.pole_id = params[:pole_id]
<<<<<<< HEAD
    # @talent = current_user.talents.build(talent_params)
    if @talent.save
      redirect_to @talent, notice: "Yessss! It was posted"
=======
    #@talent = current_user.talents.build(talent_params)
    if @talent.save
        redirect_to @talent, notice: "Yessss! It was posted"
>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5
    else
      render "new"
    end
  end

  def edit
<<<<<<< HEAD
    # @poles = Pole.all.map{ |p| [p.name, p.id] }
=======
      # @poles = Pole.all.map{ |p| [p.name, p.id] }
>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5
  end

  def update
    # @talent.pole_id = params[:pole_id]
    if @talent.update(talent_params)
      redirect_to @talent, notice: "Congrats! talent was updated!"
    else
      render 'edit'
    end
  end

  def destroy
    authorize @campaign
    @talent.destroy
    redirect_to talents_path
  end

  # def scrape_youtube(keyword)
  #   url = "https://www.googleapis.com/youtube/v3/channels?part=statistics&id=#{keyword}&key=AIzaSyCwCsUf1XjoFM3SaapkCsXH2gF7lVnckHg"
  #   user_serialized = URI.open(url).read
  #   user = JSON.parse(user_serialized)

  #   puts user['items'].first['statistics']['subscriberCount']
  #   # id=UCq5hh3lQDm41FrNchLBrJqw
  #   # url = "https://www.googleapis.com/youtube/v3/channels?part=statistics&id=UCq5hh3lQDm41FrNchLBrJqw&key=AIzaSyCwCsUf1XjoFM3SaapkCsXH2gF7lVnckHg"
  # end
  #   # puts scrape_youtube('UCYfhRFzLInc3PPawJ3we0-w')

  private

  def talent_params
<<<<<<< HEAD
    params.require(:talent).permit(:name, :about, :title, :insta_link, :link_insta, :tiktok_link, :link_tiktok,
                                   :youtube_link, :link_youtube, :video, :category, photos: [])
=======
    params.require(:talent).permit(:name, :about, :title, :insta_link, :link_insta, :tiktok_link, :link_tiktok, :youtube_link, :link_youtube, :video, :category, photos:[])
>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5
  end

  def find_talent
    @talent = Talent.find(params[:id])
  end
<<<<<<< HEAD
=======

>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5
end

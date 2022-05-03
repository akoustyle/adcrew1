class TalentsController < ApplicationController
  before_action :find_talent, only: %i[show edit update destroy]
  # before_action :skip_authorization, only: [:index, :show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # if params[:pole].blank?
    @talents = Talent.all.order("name asc")
    fresh_when last_modified: @talents.maximum(:updated_at), public: true

    # @talents = policy_scope(Talent).order(created_at: :desc)
    #  else
    # @pole_id = Pole.find_by(name: params[:pole]).id
    # @talents = Talent.where(:pole_id => @pole_id).order(created_at: :desc)
    #  end
  end

  def show
    # @talent.scrape_youtube
    # authorize @talent
    expires_in 3.minutes, :public => true
    if stale?(@talent, public: true)
    # …
    end
  end

  def new
    @talent = Talent.new
    # authorize @talent
    # @talent = current_user.talents.build
    # @poles = Pole.all.map{ |p| [p.name, p.id] }
  end

  def create
    @talent = Talent.new(talent_params)
    # @talent.pole_id = params[:pole_id]
    # @talent = current_user.talents.build(talent_params)
    # @talent.user = current_user if user_signed_in?

    # authorize @talent
    if @talent.save
      redirect_to @talent, notice: "Yessss! It was posted"
    else
      render "new"
    end
  end

  def edit
    # authorize @talent
    # @poles = Pole.all.map{ |p| [p.name, p.id] }
  end

  def update
    # authorize @talent
    # @talent.pole_id = params[:pole_id]
    @talent.slug = nil if @talent.name != params[:name]
    if @talent.update!(talent_params)
      redirect_to @talent, notice: "Congrats! talent was updated!"
    else
      render 'edit'
    end
  end

  def destroy
    # authorize @talent
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
    params.require(:talent).permit(:name, :about, :title, :insta_link, :link_insta, :tiktok_link, :link_tiktok,
                                   :youtube_link, :link_youtube, :video, :media, :category, photos: [])
  end

  def find_talent
    @talent = Talent.friendly.find_by_slug(params[:slug])
    # @talent = policy_scope(Talent).find(params[:id])
    # authorize @talent
  end
end

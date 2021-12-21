class TalentsController < ApplicationController
 before_action :find_talent, only: [:show, :edit, :update, :destroy]

  def index
    if params[:pole].blank?
      @talents = Talent.all.order(created_at: :desc)
   else
    @pole_id = Pole.find_by(name: params[:pole]).id
    @talents = Talent.where(:pole_id => @pole_id).order(created_at: :desc)
   end
  end

  def show
  end

  def new
   @talent = Talent.new
  #@talent = current_user.talents.build
  @poles = Pole.all.map{ |p| [p.name, p.id] }
  end

  def create
    @talent = Talent.new(talent_params)
    @talent.pole_id = params[:pole_id]
    #@talent = current_user.talents.build(talent_params)
    if @talent.save
        redirect_to @talent, notice: "Yessss! It was posted"
    else
      render "new"
    end
  end

  def edit
      @poles = Pole.all.map{ |p| [p.name, p.id] }

  end

  def update
    @talent.pole_id = params[:pole_id]
    if @talent.update(talent_params)
      redirect_to @talent, notice: "Congrats! talent was updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @talent.destroy
    redirect_to talents_path
  end

  private

  def talent_params
    params.require(:talent).permit(:name, :about, :title, :insta_link, :tiktok_link, :youtube_link, :video, :pole_id, photos:[])
  end

  def find_talent
    @talent = Talent.find(params[:id])
  end
end

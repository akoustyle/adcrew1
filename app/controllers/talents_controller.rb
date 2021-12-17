class TalentsController < ApplicationController
 before_action :find_talent, only: [:show, :edit, :update, :destroy]

  def index
    @talents = Talent.all
  end

  def show
  end

  def new
   @talent = Talent.new
  #@talent = current_user.talents.build
  end

  def create
    @talent = Talent.new(talent_params)
    #@talent = current_user.talents.build(talent_params)
    if @talent.save
        redirect_to @talent, notice: "Yessss! It was posted"
    else
      render "new"
    end
  end

  def edit
  end

  def update
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
    params.require(:talent).permit(:name, :about, :title, :insta_link, :tiktok_link, :youtube_link, photo:[])
  end

  def find_talent
    @talent = Talent.find(params[:id])
  end
end

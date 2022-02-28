class CampaignsController < ApplicationController
    before_action :find_campaign, only: [:show, :edit, :update, :destroy]

  def index
    @campaigns = Campaign.all
  end

  def show
  end

  def new
   @campaign = Campaign.new
  #@campaign = current_user.campaigns.build
  end

  def create
    @talent = Talent.find_by(params[:talents])
    @campaign = Campaign.new(campaign_params)
    #@campaign = current_user.campaigns.build(campaign_params)
    if !@campaign
      @campaign = Campaign.new
      @campaign.collab = @collab
      @campaign.save
      redirect_to @campaign, notice: "Yessss! It was posted"
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @campaign.update(campaign_params)
      redirect_to @campaign, notice: "Congrats! Campaign was updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @campaign.destroy
    redirect_to campaigns_path
  end

  private

  def campaign_params
    params.require(:campaign).permit(:name, :objectif, :activation, :reach, :sentence, :sentence2, :talents, :tag, photos:[])
  end

  def find_campaign
    @campaign = Campaign.find(params[:id])
  end
end

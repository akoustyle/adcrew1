class CampaignsController < ApplicationController
  before_action :find_campaign, only: %i[show edit update destroy]

  def index
    @campaigns = Campaign.all
  end

  def show
  end

  def new
    @campaign = Campaign.new
    # @campaign = current_user.campaigns.build
  end

  def create
    @collab = Talent.find_by(params[:collabs])
    @campaign = Campaign.new(campaign_params)
    if @campaign.save
      params[:campaign][:collab_ids].each do |id|
        next if id.blank?
        Collab.create(campaign: @campaign, talent_id: id)
      end
      redirect_to @campaign, notice: "Yessss! It was posted"
    else
      render "new"
    end
  end

  def edit
    @collab = Talent.find_by(params[:collabs])
    find_campaign
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
    params.require(:campaign).permit(:name, :objectif, :activation, :reach, :sentence, :sentence2, :tag, :video,
                                     photos: [])
  end

  def find_campaign
    @campaign = Campaign.find(params[:id])
  end
end

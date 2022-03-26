class CampaignsController < ApplicationController
<<<<<<< HEAD
  before_action :find_campaign, only: %i[show edit update destroy]
=======
    before_action :find_campaign, only: [:show, :edit, :update, :destroy]
>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5

  def index
    @campaigns = Campaign.all
  end

  def show
  end

  def new
<<<<<<< HEAD
    @campaign = Campaign.new
    # @campaign = current_user.campaigns.build
=======
   @campaign = Campaign.new
  #@campaign = current_user.campaigns.build
>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5
  end

  def create
    @collab = Talent.find_by(params[:collabs])
    @campaign = Campaign.new(campaign_params)
    if @campaign.save
      params[:campaign][:collab_ids].each do |id|
        next if id.blank?
<<<<<<< HEAD

=======
>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5
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
<<<<<<< HEAD
=======

>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5
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
<<<<<<< HEAD
    params.require(:campaign).permit(:name, :objectif, :activation, :reach, :sentence, :sentence2, :tag, :video,
                                     photos: [])
=======
    params.require(:campaign).permit(:name, :objectif, :activation, :reach, :sentence, :sentence2, :tag, :video, photos:[])
>>>>>>> 8c133184c64ab67d11db1e9741e06f2d65ef08c5
  end

  def find_campaign
    @campaign = Campaign.find(params[:id])
  end
end

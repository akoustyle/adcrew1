class CampaignsController < ApplicationController
  before_action :find_campaign, only: %i[show edit update destroy]
  # before_action :skip_authorization, only: [:index, :show]
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @campaigns = Campaign.all.order(created_at: :desc)
    # @campaigns = policy_scope(Campaign)
  end

  def show
    @page_title = @campaign.name
    @page_description = @campaign.objectif
  end

  def new
    @campaign = Campaign.new
    # @campaign = current_user.campaigns.build
    # authorize @campaign
  end

  def create
    @collab = Talent.find_by(params[:collabs])
    @campaign = Campaign.new(campaign_params)
    # @campaign.user = current_user if user_signed_in?
    if @campaign.save
      # authorize @campaign
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
    # authorize @campaign
    find_campaign
  end

  def update
    # authorize @campaign
    @campaign.slug = nil if @campaign.name != params[:name]
    if @campaign.update(campaign_params)
      redirect_to @campaign, notice: "Congrats! Campaign was updated!"
    else
      render 'edit'
    end
  end

  def destroy
    # authorize @campaign
    @campaign.slug = nil if @campaign.name != params[:name]
    @campaign.destroy
    redirect_to campaigns_path
  end

  private

  def campaign_params
    params.require(:campaign).permit(:name, :objectif, :collabs, :talent, :objectif_en, :objectif_fr, :activation, :reach, :sentence, :sentence2, :tag, :video, photos: [] )
  end

  def find_campaign
    @campaign = Campaign.friendly.find_by_slug(params[:slug])
    # @campaign = policy_scope(Campaign).find(params[:id])
    # authorize @campaign
  end
end

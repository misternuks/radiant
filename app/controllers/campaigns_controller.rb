class CampaignsController < ApplicationController
  def index
    @campaigns = policy_scope(Campaign)
  end

  def show
    @campaign = Campaign.all.find(params[:id])
    @user = current_user
    authorize @campaign
  end

  def new
    @campaign = Campaign.new
    @user = current_user
    @campaign.players.build
    authorize @campaign
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @user = current_user
    @campaign.user = @user
    authorize @campaign
    if @campaign.save
      redirect_to campaign_path(@campaign)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @campaign = Campaign.find(params[:id])
    @user = current_user
    @players = @campaign.players
    authorize @campaign
  end

  def update
    @campaign = Campaign.find(params[:id])
    @campaign.players.destroy_all
    authorize @campaign
    if @campaign.update(campaign_params)
      redirect_to campaign_path(@campaign)
    else
      render :index, status: :unprocessable_entity
    end
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    authorize @campaign
    @campaign.destroy

    redirect_to campaigns_path, status: :see_other
  end

  private

  def campaign_params
    params.require(:campaign).permit(:world_name, :world_biome, :world_mood, :world_weather, players_attributes: %i[player_name character_name])
  end
end

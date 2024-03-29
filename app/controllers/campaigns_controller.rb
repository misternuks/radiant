class CampaignsController < ApplicationController
  def index
    @campaigns = policy_scope(Campaign)
  end

  def show
    @campaign = Campaign.all.find(params[:id])
    @user = current_user
    authorize @campaign
    @service = OpenaiService.new("Create a description with a tone of #{@campaign.world_mood} DND world in 75 words using these params [World Name:#{@campaign.world_name}, Biome:#{@campaign.world_biome}, Weather:#{@campaign.world_weather}").call
    # if @campaign.ai_texts_ids.present?
    #   @service = @campaign.ai_texts
    # else
    #   @campaign.ai_texts OpenaiService.new("Create a description with a tone of #{@campaign.world_mood} DND world in 75 words using these params [World Name:#{@campaign.world_name}, Biome:#{@campaign.world_biome}, Weather:#{@campaign.world_weather}").call
    #   @service = @campaign.ai_texts_ids
    # end
  end

  def edit
    @campaign = Campaign.find(params[:id])
    @players = @campaign.players
    authorize @campaign
  end

  def update
    @campaign = Campaign.find(params[:id])
    authorize @campaign
    if @campaign.update(campaign_params)
      redirect_to campaign_path(@campaign)
    else
      render :edit, status: :unprocessable_entity
    end
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

  # def destroy
  #   @campaign = Campaign.find(params[:id])
  #   @campaign.players.destroy
  #   @campaign.ai_texts.destroy
  #   @campaign.destroy
  # end

  private

  def campaign_params
    params.require(:campaign).permit(:world_name, :world_biome, :world_mood, :world_weather, players_attributes: %i[player_name character_name])
  end
end

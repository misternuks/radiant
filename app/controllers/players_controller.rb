class PlayersController < ApplicationController

  def index
    @players = policy_scope(Players)
  end

  def new
    @player = Player.new
    @campaign = Campaign.all.find(params[:campaign_id])
    authorize @player
  end

  def create
    @player = Player.new(params[:id])
    @campaign = Campaign.all.find(params[:campaign_id])
    authorize @player
    @player.is_enemy = true
    if @player.save
      redirect_to players_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @player = Player.find(params[:id])
    authorize @player
    @player.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def player_params
    params.require(:player).permit(:character_name, :character_class)
  end
end

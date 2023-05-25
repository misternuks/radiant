class ActivePlayersController < ApplicationController

  def index
    @active_players = ActivePlayer.all
    authorize @active_players
  end

  def new
    @active_player = ActivePlayer.new
    authorize @active_player
    @active_player.player.build
  end

  def create
  end

  private

  def active_player_params
    params.require(:active_player).permit(:initiative, players_attributes: %i[player_name character_name character_class is_enemy])
  end
end

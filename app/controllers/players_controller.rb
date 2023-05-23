class PlayersController < ApplicationController
  def destroy
    @player = Player.find(params[:id])
    authorize @player
    @player.destroy

    redirect_to root_path, status: :see_other
  end
end

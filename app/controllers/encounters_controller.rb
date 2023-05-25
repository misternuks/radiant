class EncountersController < ApplicationController
  def index
    @encounters = policy_scope(Encounter)
  end

  def show
    @encounter = Encounter.find(params[:id])
    authorize @encounter
  end

  def new
    @encounter = Encounter.new
    @encounter.enemies.build
    @campaign = Campaign.find(params[:campaign_id])
    authorize @encounter
  end

  def create
    @encounter = Encounter.new(encounter_params)
    @campaign = Campaign.find(params[:campaign_id])
    @encounter.players = @campaign.players
    authorize @encounter
    if @encounter.save
      redirect_to encounter_path(@encounter)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @encounter = Encounter.find(params[:id])
    authorize @encounter
  end

  def update
    @encounter = Encounter.find(params[:id])
    authorize @encounter
    if @encounter.update(encounter_params)
      redirect_to encounter_path(@encounter)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def encounter_params
    params.require(:encounter).permit(enemies_attributes: [:name])
  end
end

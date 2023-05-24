class EncountersController < ApplicationController
  def index
  end

  def show
    @encounter = Encounter.find(params[:id])
    authorize @encounter
  end

  def new
    @encounter = Encounter.new
    authorize @encounter
    @campaign = Campaign.find_by(user: current_user)
  end

  def create
    @campaign = Campaign.find(params[:id])
    @encounter = Encounter.new(encounter_params)
    @encounter.campaign = @campaign
    authorize @encounter
    if @encounter.save
      redirect_to campaign_encounter_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def encounter_params
    params.require(:encounter).permit(:skill_type, :success, :criticality, :summary)
  end
end

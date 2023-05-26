class EncountersController < ApplicationController
  def index
    @encounters = policy_scope(Encounter)
  end

  def show
    @encounter = Encounter.find(params[:id])
    @campaign = Campaign.find(@encounter.players.first.campaign_id)
    if @encounter.summary.present?
      @summary = OpenaiService.new("Create a DND combat narrative of #{@encounter.summary} attacking the #{@encounter.target} DND world in 75 words using these params [Damage Type: #{@encounter.skill_type},Hit:#{@encounter.success}, Killing Blow:#{@encounter.criticality}").call
    end
    authorize @encounter
    raise
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
    @encounter.summary = params[:character]
    @encounter.save
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
    params.require(:encounter).permit(:skill_type, :success, :criticality, :target, :summary, enemies_attributes: [:name])
  end
end

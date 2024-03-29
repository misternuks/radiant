class EncountersController < ApplicationController
  def index
    @encounters = policy_scope(Encounter)
  end

  def show
    @encounter = Encounter.find(params[:id])
    @checking = @encounter
    @campaign = Campaign.find(@encounter.players.first.campaign_id)
    if @encounter.summary.present?
      @summary = OpenaiService.new("Create a DND combat narrative of a single combatant named #{@encounter.summary} attacking the single target named #{@encounter.target} in 60 words using these params [Damage Type: #{@encounter.skill_type},Hit:#{@encounter.success}, Killing Blow:#{@encounter.criticality}").call
    end
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
    @encounter.skill_type = nil
    @encounter.success = false
    @encounter.criticality = false

    # Combatant is an array containing player and enemies names
    # formatted for radio collection
    @combatant = []
    @encounter.players.map.each do |player|
      @combatant << player.character_name
    end
    @encounter.enemies.map.each do |enemy|
      @combatant << enemy.name
    end
    if params[:character].present?
      @encounter.summary = params[:character]
    else
      @encounter.summary = params[:enemy]
    end
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
    params.require(:encounter).permit(:skill_type, :success, :criticality, :target, :summary, :position, enemies_attributes: [:name])
  end
end

class CampaignsController < ApplicationController
  def index
    @campaigns = policy_scope(Campaign)
  end

  def show
    @campaign = Campaign.all.find(params[:id])
    authorize @campaign
  end
end

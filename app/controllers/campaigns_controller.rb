class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
    # @campaigns = policy_scope(Campaign)
  end

  def show
    @campaign = Campaign.all.find(params[:id])
  end
end

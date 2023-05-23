class CampaignsController < ApplicationController
<<<<<<< HEAD
=======
  def index
    @campaigns = Campaign.all
    # @campaigns = policy_scope(Campaign)
  end

  def show
    @campaign = Campaign.all.find(params[:id])
  end
>>>>>>> 875082b5445857e785693befafbecb30865934fa
end

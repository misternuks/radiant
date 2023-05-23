class AddCampaignToEncounters < ActiveRecord::Migration[7.0]
  def change
    add_reference :encounters, :campaign, null: false, foreign_key: true
  end
end

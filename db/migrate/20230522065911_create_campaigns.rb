class CreateCampaigns < ActiveRecord::Migration[7.0]
  def change
    create_table :campaigns do |t|
      t.string :world_name
      t.string :world_biome
      t.string :world_mood
      t.string :world_weather
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

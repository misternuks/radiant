class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :player_name
      t.string :character_name
      t.string :character_class
      t.references :campaign, null: false, foreign_key: true

      t.timestamps
    end
  end
end

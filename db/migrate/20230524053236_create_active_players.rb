class CreateActivePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :active_players do |t|
      t.references :player, null: false, foreign_key: true
      t.references :encounter, null: false, foreign_key: true
      t.integer :initiative

      t.timestamps
    end
  end
end

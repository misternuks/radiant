class AddPlayerToEncounters < ActiveRecord::Migration[7.0]
  def change
    add_reference :encounters, :player, null: false, foreign_key: true
  end
end

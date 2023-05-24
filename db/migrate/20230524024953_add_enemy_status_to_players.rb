class AddEnemyStatusToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :is_enemy, :boolean
  end
end

class AddDefaultValueToIsEnemy < ActiveRecord::Migration[7.0]
  def change
    change_column_default :players, :is_enemy, false
  end
end

class AddDefaultValueToInitiative < ActiveRecord::Migration[7.0]
  def change
    change_column_default :active_players, :initiative, 0
  end
end

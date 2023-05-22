class AddSummaryToEncounters < ActiveRecord::Migration[7.0]
  def change
    add_column :encounters, :summary, :string
  end
end

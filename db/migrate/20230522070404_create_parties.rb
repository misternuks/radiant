class CreateParties < ActiveRecord::Migration[7.0]
  def change
    create_table :parties do |t|
      t.references :player, null: false, foreign_key: true
      t.references :encounter, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateEnemies < ActiveRecord::Migration[7.0]
  def change
    create_table :enemies do |t|
      t.string :name
      t.references :encounter, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateTargetGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :target_groups do |t|
      t.references :target, null: false, foreign_key: true
      t.references :encounter, null: false, foreign_key: true

      t.timestamps
    end
  end
end

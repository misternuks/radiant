class CreateEncounters < ActiveRecord::Migration[7.0]
  def change
    create_table :encounters do |t|
      t.string :skill_type
      t.boolean :success
      t.boolean :criticality

      t.timestamps
    end
  end
end

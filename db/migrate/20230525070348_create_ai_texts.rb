class CreateAiTexts < ActiveRecord::Migration[7.0]
  def change
    create_table :ai_texts do |t|
      t.text :text
      t.references :campaign, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class ChangeTextToString < ActiveRecord::Migration[7.0]
  def change
    change_column :ai_texts, :text, :string
  end
end

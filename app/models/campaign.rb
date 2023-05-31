class Campaign < ApplicationRecord
  belongs_to :user

  has_many :players, dependent: :destroy
  has_one :ai_text, dependent: :destroy

  validates :world_name, presence: true
  validates :world_biome, presence: true
  validates :world_mood, presence: true
  validates :world_weather, presence: true

  accepts_nested_attributes_for :players, allow_destroy: true
end

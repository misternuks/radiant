class Campaign < ApplicationRecord
  belongs_to :user

  has_many :players, dependent: :destroy
  has_one :ai_text, dependent: :destroy

  validates :world_name, presence: true
  validates :world_biome, presence: true
  validates :world_mood, presence: true
  validates :world_weather, presence: true
  validates :players, presence: true

  accepts_nested_attributes_for :players, allow_destroy: true

  BIOMES = %i[forest desert jungle plains cavern tundra city]
  WEATHERS = %i[clear cloudy rainy snowy windy stormy]
  MOODS = %i[comedic romantic dark epic medieval high]
end

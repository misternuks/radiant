class Campaign < ApplicationRecord
  belongs_to :user

  has_many :players
  has_many :encounters

  validates :world_name, presence: true
  validates :world_biome, presence: true
  validates :world_mood, presence: true
  validates :world_weather, presence: true
end

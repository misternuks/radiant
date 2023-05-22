class Campaign < ApplicationRecord
  belongs_to :user

  has_many :players

  validates :world_name, presence: true
  validates :world_biome, presence: true
  validates :world_mood, presence: true
  validates :world_weather, presence: true
end

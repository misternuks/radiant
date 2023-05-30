class Player < ApplicationRecord
  belongs_to :campaign

  has_many :active_players
  has_many :encounters, through: :active_players

  validates :player_name, presence: true
  validates :character_name, presence: true
end

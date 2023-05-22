class Player < ApplicationRecord
  belongs_to :campaign

  has_many :parties
  has_many :encounters, through: :parties

  validates :player_name, presence: true
  validates :character_name, presence: true
end

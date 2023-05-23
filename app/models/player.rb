class Player < ApplicationRecord
  belongs_to :campaign

  has_many :encounters

  validates :player_name, presence: true
  validates :character_name, presence: true
end

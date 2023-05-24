class Player < ApplicationRecord
  belongs_to :campaign

  has_many :encounters

  accepts_nested_attributes_for :players, allow_destroy: true

  validates :player_name, presence: true
  validates :character_name, presence: true
end

class Encounter < ApplicationRecord
  has_many :active_players
  has_many :players, through: :active_players
  has_many :enemies

  accepts_nested_attributes_for :enemies, allow_destroy: true
  # validates :skill_type, presence: true
  # validates :success, presence: true
end

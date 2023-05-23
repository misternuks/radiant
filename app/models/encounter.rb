class Encounter < ApplicationRecord
  belongs_to :player
  has_many :target_groups
  has_many :targets, through: :target_groups

  validates :skill_type, presence: true
  validates :success, presence: true
end

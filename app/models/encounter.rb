class Encounter < ApplicationRecord
  belongs_to :player
  has_many :target_groups
  has_many :targets, through: :target_groups

  accepts_nested_attributes_for :targets, reject_if: :all_blank, allow_destroy: true

  validates :skill_type, presence: true
  validates :success, presence: true
end

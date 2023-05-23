class Encounter < ApplicationRecord
  # belongs_to :party
  # belongs_to :target_group
  belongs_to :campaign

  validates :skill_type, presence: true
  validates :success, presence: true
end

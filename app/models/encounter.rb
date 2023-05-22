class Encounter < ApplicationRecord
  belongs_to :party
  belongs_to :target_group

  validates :skill_type, presence: true
  validates :success, presence: true
end

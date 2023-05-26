class Encounter < ApplicationRecord
  has_many :active_players
  has_many :players, through: :active_players
  has_many :enemies

  accepts_nested_attributes_for :enemies,reject_if: :reject_empty, allow_destroy: true
  # validates :skill_type, presence: true
  # validates :success, presence: true
  def reject_empty(attributes)
    attributes['name'].blank?
  end
end

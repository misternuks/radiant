class Target < ApplicationRecord
  has_many :encounters, through: :target_groups
  has_many :target_groups

  validates :name, presence: true
end

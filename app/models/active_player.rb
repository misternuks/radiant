class ActivePlayer < ApplicationRecord
  belongs_to :player
  belongs_to :encounter

  # accepts_nested_attributes_for :players, allow_destroy: true
end

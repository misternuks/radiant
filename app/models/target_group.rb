class TargetGroup < ApplicationRecord
  belongs_to :target
  belongs_to :encounter
end

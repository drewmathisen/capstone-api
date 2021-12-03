class SpaceLog < ApplicationRecord
  belongs_to :entry
  belongs_to :observed_body
end

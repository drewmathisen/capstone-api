class Entry < ApplicationRecord
  belongs_to :user
  has_many :images
  has_many :space_logs
  has_many :observed_bodies, through: :space_logs
end

class ObservedBody < ApplicationRecord
  has_many :space_logs
  has_many :entries, through: :space_logs 
end

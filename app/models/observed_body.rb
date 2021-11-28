class ObservedBody < ApplicationRecord
  has_many :entries, through: :space_logs 
end

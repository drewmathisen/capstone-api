class User < ApplicationRecord
  has_many :entries
  has_many :iages
end

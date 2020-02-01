class Tournament < ApplicationRecord
  has_many :players
  has_many :matches
end
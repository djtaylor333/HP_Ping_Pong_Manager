class Game < ApplicationRecord
  belongs_to :match
  has_one :score
end
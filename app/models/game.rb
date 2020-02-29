class Game < ApplicationRecord
  belongs_to :match, dependent: :destroy
  has_one :score, dependent: :destroy
end
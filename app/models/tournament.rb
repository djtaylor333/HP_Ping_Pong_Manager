class Tournament < ApplicationRecord
  has_many :players, dependent: :destroy
  has_many :matches, dependent: :destroy

  UDE = 'Unseeded Double Elimination Tournament'
  SDE = 'Seeded Double Elimination Tournament'
  SSES = 'Seeded Single Elimination Split Skill Tournament'
end
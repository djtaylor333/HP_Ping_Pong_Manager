class Match < ApplicationRecord
  has_many :games, dependent: :destroy

  B321 = 'Best of 3 Games to 21 Points'
  B511 = 'Best of 5 Games to 11 Points'
  B711 = 'Best of 7 Games to 11 Points'
end
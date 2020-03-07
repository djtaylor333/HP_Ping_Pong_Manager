class Match < ApplicationRecord
  has_many :games, dependent: :destroy

  B321 = 'Best of 3 Games to 21 Points'
  B511 = 'Best of 5 Games to 11 Points'
  B711 = 'Best of 7 Games to 11 Points'

  def winner
    return player_1_id if games.where(winner: player_1_id).count >
      games.where(winner: player_2_id).count
    return player_2_id
  end

  def loser
    return player_1_id if games.where(loser: player_1_id).count >
      games.where(loser: player_2_id).count
    return player_2_id
  end
end
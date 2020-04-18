class Game < ApplicationRecord
  belongs_to :match, dependent: :destroy
  has_one :score, dependent: :destroy

  def winner_name
    Player.find_by(id: winner).name
  end

  def loser_name
    Player.find_by(id: loser).name
  end
end
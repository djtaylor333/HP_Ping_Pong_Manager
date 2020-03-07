class Player < ApplicationRecord
  validates_presence_of :name, :email, :rank

  def match_win_loss_ratio
    wins = 0
    loss = 0
    winners = Match.where(player_1_id: self.id).each.map(&:winner) + Match.where(player_2_id: self.id).each.map(&:winner)
    winners.each do |w|
      if w == self.id
        wins +=1
      else
        loss +=1
      end
    end
    return "#{wins}:#{loss}"
  end

  def game_win_loss_ratio
    win = Game.where(winner: self.id).count
    loss = Game.where(loser: self.id).count
    return "#{win}:#{loss}"
  end

  def new_rank
    new_rank = active ? Player.all.sort_by(&:points).reverse.find_index(self) + 1 : 0
    self.update!(rank: new_rank)
    new_rank
  end

  def tournaments_played
    matches = Match.where(player_1_id: id) + Match.where(player_2_id: id)
    Tournament.where(id: (matches.map(&:tournament_id).uniq)).map(&:id)
  end
end
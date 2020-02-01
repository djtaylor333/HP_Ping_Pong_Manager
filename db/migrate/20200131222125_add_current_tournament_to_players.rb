class AddCurrentTournamentToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_reference :players, :tournament, foreign_key: true, name: 'current_tournament_id'
  end
end

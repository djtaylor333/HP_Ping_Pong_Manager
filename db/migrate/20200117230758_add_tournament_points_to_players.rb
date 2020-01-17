class AddTournamentPointsToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :tournament_points, :integer, default: 0
  end
end

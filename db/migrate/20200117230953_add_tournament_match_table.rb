class AddTournamentMatchTable < ActiveRecord::Migration[6.0]
  def change
    create_table :tournament_match do |t|
      t.string :player_1, null: true
      t.string :player_2, null: true
      t.integer :match_points, default: 0

      t.references :match_scores, null: true
      t.timestamps null: false
    end
  end
end

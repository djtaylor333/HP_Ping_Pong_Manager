# encoding: utf-8
class FixTableConfiguration < ActiveRecord::Migration[6.0]
  def change
    change_column :games, :winner, :integer, references: :players, null: false
    change_column :games, :loser, :integer, references: :players, null: false
    change_column :games, :match_id, :integer, references: :matches, null: false

    change_column :matches, :player_1_id, :integer, references: :players, null: false
    change_column :matches, :player_2_id, :integer, references: :players, null: false
    change_column :matches, :tournament_id, :integer, references: :tournaments, null: true

    change_column :scores, :game_id, :integer, references: :games, null: true
  end
end

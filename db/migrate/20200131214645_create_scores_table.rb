# encoding: utf-8
class CreateScoresTable < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :winner_points, default: 0
      t.integer :loser_points, default: 0

      t.timestamps
    end
  end
end

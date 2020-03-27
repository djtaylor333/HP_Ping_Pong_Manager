# encoding: utf-8
class CreateGamesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.datetime :date_played
      t.integer :winner
      t.integer :loser

      t.timestamps
    end
  end
end

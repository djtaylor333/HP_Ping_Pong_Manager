class AddScoresTable < ActiveRecord::Migration[6.0]
  def change
    create_table :match_scores do |t|
      t.string :player_1, null: false
      t.string :player_2, null: false
      t.string :winner, null: true
      t.string :score, null: true
      t.boolean :played, default: false

      t.timestamps null: false
    end
  end

end

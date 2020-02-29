class AddGameIdToScores < ActiveRecord::Migration[6.0]
  def change
    add_reference :scores, :game, foreign_key: true, name: 'game_id', on_delete: :cascade
  end
end

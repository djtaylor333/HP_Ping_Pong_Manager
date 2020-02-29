class AddMatchIdToGames < ActiveRecord::Migration[6.0]
  def change
    add_reference :games, :match, foreign_key: true, name: 'match_id', on_delete: :cascade
  end
end

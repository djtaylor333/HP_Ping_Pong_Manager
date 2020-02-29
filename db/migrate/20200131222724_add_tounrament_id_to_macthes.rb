class AddTounramentIdToMacthes < ActiveRecord::Migration[6.0]
  def change
    add_reference :matches, :tournament, foreign_key: true, name: 'tournament_id', on_delete: :cascade
  end
end

class AddTournamentsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :tournaments do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.integer :num_players, null: false
      t.boolean :complete, default: false

      t.timestamps null: false
    end
  end
end

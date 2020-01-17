class AddPlayersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.string :nickname, null: true
      t.string :email, null: false
      t.integer :current_ranking, null: false
      t.boolean :active, default: true

      t.timestamps null: false
    end
  end
end

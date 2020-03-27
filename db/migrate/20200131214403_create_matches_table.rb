# encoding: utf-8
class CreateMatchesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.datetime :date_played
      t.integer :player_1_id, null: false
      t.integer :player_2_id, null: false
      t.string :format, null: false
      t.integer :weight, default: 0

      t.timestamps
    end
  end
end

class CreateTournamentsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :tournaments do |t|
      t.string :format, null: false
      t.string :name, null: false
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false

      t.timestamps
    end
  end
end

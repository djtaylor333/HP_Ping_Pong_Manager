class CreateUsersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :rank, default: 0
      t.boolean :active, default: true
      t.integer :points, default: 0

      t.timestamps
    end
  end
end

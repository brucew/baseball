class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :team, index: true
      t.string :surname
      t.string :given_name
      t.string :position
      t.float :avg, default: 0, null: false
      t.integer :hr, default: 0, null: false
      t.integer :rbi, default: 0, null: false
      t.integer :runs, default: 0, null: false
      t.integer :sb, default: 0, null: false
      t.float :ops, default: 0, null: false
    end
  end
end
